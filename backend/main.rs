extern crate diesel;

use actix_session::storage::CookieSessionStore;
use actix_session::SessionMiddleware;
use actix_web::cookie::Key;
use actix_web::middleware::{Compress, Logger, NormalizePath};
use actix_web::web::Data;
use actix_web::{web, App, HttpServer};

mod models;
mod schema;
mod services;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let key = Key::generate();
    let app_data = create_rust_app::setup();

    HttpServer::new(move || {
        let mut app = App::new()
            .wrap(Compress::default())
            .wrap(NormalizePath::trim())
            .wrap(Logger::default())
            .wrap(
                SessionMiddleware::builder(CookieSessionStore::default(), key.clone())
                    .cookie_secure(false)
                    .build(),
            );

        app = app.app_data(Data::new(app_data.database.clone()));
        app = app.app_data(Data::new(app_data.mailer.clone()));

        let mut api_scope = web::scope("/api");
        api_scope = api_scope
            .service(services::todo::endpoints(web::scope("/todos")))
            .service(services::categories::endpoints(web::scope("/categories")))
            .service(services::quiz::endpoints(web::scope("/quiz")))
            .service(services::quiz_status::endpoints(web::scope("/quiz-status")))
            .service(services::quiz_submission::endpoints(web::scope(
                "/quiz-submission",
            )));

        #[cfg(debug_assertions)]
        { /* Development-only routes */ }

        app = app.service(api_scope);
        app = app.default_service(web::get().to(create_rust_app::render_views));
        app
    })
    .bind("0.0.0.0:3000")?
    .run()
    .await
}
