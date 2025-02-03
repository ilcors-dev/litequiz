use axum::http::header::{AUTHORIZATION, CONTENT_TYPE};
use axum::http::{HeaderName, Method};
use axum::response::IntoResponse;
use axum::routing::{delete, post, put};
use axum::{http::HeaderValue, response::Html, routing::get, Extension, Router};
use diesel::r2d2::{self, ConnectionManager};
use diesel::sqlite::SqliteConnection;
use dotenvy::dotenv;
use serde_json::json;
use std::env;
use std::sync::Arc;
use tower_http::cors::{Any, CorsLayer};
use tower_http::trace::TraceLayer;
use tower_sessions::cookie::time::Duration;
use tower_sessions::{MemoryStore, Session, SessionManagerLayer};
use tracing_subscriber::{layer::SubscriberExt, util::SubscriberInitExt};
use uuid::Uuid;
extern crate diesel;

mod models;
mod schema;
mod services;

// Define a type alias for the connection pool
pub type DbPool = r2d2::Pool<ConnectionManager<SqliteConnection>>;

// Function to establish the SQLite connection pool
pub fn establish_connection_pool() -> DbPool {
    dotenv().ok();
    let database_url =
        env::var("DATABASE_URL").unwrap_or_else(|_| "./database/db.sqlite".to_string());
    let manager = ConnectionManager::<SqliteConnection>::new(database_url);
    r2d2::Pool::builder()
        .build(manager)
        .expect("Failed to create SQLite connection pool")
}
async fn ping(session: Extension<Session>) -> impl IntoResponse {
    let uuid = Uuid::new_v4();

    let s = session.get::<String>("id").await.unwrap();

    if s.is_none() {
        session.insert("id", uuid.to_string()).await.unwrap();
    }

    axum::Json(json!({
        "message": "hello from litequiz!",
        "session": s
    }))
}

#[tokio::main]
async fn main() {
    tracing_subscriber::registry()
        .with(tracing_subscriber::fmt::layer())
        .init();

    let cors = CorsLayer::new()
        .allow_origin("http://localhost:3000".parse::<HeaderValue>().unwrap())
        .allow_methods([Method::GET, Method::POST, Method::PUT, Method::DELETE])
        .allow_headers([
            CONTENT_TYPE,
            AUTHORIZATION,
            "X-Requested-With".parse::<HeaderName>().unwrap(),
        ])
        .allow_credentials(true);

    let session_store = MemoryStore::default();
    let session_layer = SessionManagerLayer::new(session_store)
        .with_name("litequiz-session")
        .with_http_only(true)
        .with_secure(false)
        .with_always_save(true)
        .with_same_site(tower_sessions::cookie::SameSite::Lax)
        .with_expiry(tower_sessions::Expiry::OnInactivity(Duration::minutes(120)));

    let pool = establish_connection_pool();

    let shared_pool = Arc::new(pool);

    let app = Router::new()
        .route("/", get(ping))
        .route("/ping", get(ping))
        .route("/api/quiz/{category_id}", get(services::quiz::index))
        .route("/api/categories", get(services::categories::index))
        .route(
            "/api/categories/{categ_id}",
            get(services::categories::show),
        )
        .route(
            "/api/categories/{categ_id}",
            put(services::categories::update),
        )
        .route(
            "/api/quiz-status/is-active",
            get(services::quiz_status::is_active),
        )
        .route("/api/quiz-status", get(services::quiz_status::index))
        .route("/api/quiz-status", post(services::quiz_status::store))
        .route("/api/quiz-status", delete(services::quiz_status::destroy))
        .route(
            "/api/category-score-settings/{category_score_settings_id}",
            get(services::category_score_settings::show),
        )
        .route(
            "/api/category-score-settings/",
            post(services::category_score_settings::store),
        )
        .route("/api/quiz-solution", get(services::quiz_solution::get))
        .layer(TraceLayer::new_for_http())
        .layer(cors)
        .layer(session_layer)
        .layer(Extension(shared_pool));

    let listener = tokio::net::TcpListener::bind("0.0.0.0:4000").await.unwrap();

    axum::serve(listener, app.into_make_service())
        .await
        .unwrap();
}
