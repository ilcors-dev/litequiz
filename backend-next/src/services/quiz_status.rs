use std::sync::Arc;

use axum::http::StatusCode;
use axum::response::IntoResponse;
use axum::{extract, Extension};
use tower_sessions::Session;

use crate::models::categories::Categories;
use crate::DbPool;

#[tsync::tsync]
#[derive(serde::Serialize)]
pub struct QuizStatus {
    pub category: Option<Categories>,
    pub active: bool,
}

#[tsync::tsync]
#[derive(serde::Deserialize, serde::Serialize, Clone)]
pub struct QuizAnswer {
    pub question_id: i32,
    pub answer: Option<bool>,
    pub answer_id: Option<i32>,
}

pub async fn is_active(
    db: Extension<Arc<DbPool>>,
    session: Extension<Session>,
) -> impl IntoResponse {
    let mut con = db.get().expect("Failed to get connection");
    let active = session.get::<Vec<i32>>("quiz").await.unwrap().is_some();

    if active {
        let category_id = session.get::<i32>("quiz_category_id").await.unwrap();

        let category = Categories::read(&mut con, category_id.unwrap());

        if category.is_err() {
            return StatusCode::INTERNAL_SERVER_ERROR.into_response();
        }

        return (
            StatusCode::OK,
            axum::Json(QuizStatus {
                category: Some(category.unwrap()),
                active: true,
            }),
        )
            .into_response();
    }

    (
        StatusCode::OK,
        axum::Json(QuizStatus {
            category: None,
            active: false,
        }),
    )
        .into_response()
}

pub async fn index(session: Extension<Session>) -> impl IntoResponse {
    let answers = session.get::<Vec<QuizAnswer>>("answers").await.unwrap();

    (StatusCode::OK, axum::Json(answers)).into_response()
}

pub async fn store(
    session: Extension<Session>,
    extract::Json(answers): extract::Json<Vec<QuizAnswer>>,
) -> impl IntoResponse {
    if session.insert("answers", answers).await.is_err() {
        return StatusCode::INTERNAL_SERVER_ERROR.into_response();
    }

    StatusCode::OK.into_response()
}

pub async fn destroy(session: Extension<Session>) -> impl IntoResponse {
    let quiz = vec!["answers", "quiz", "quiz_category_id"];

    for key in quiz {
        match session.remove_value(key).await {
            Ok(_) => (),
            Err(_) => return StatusCode::INTERNAL_SERVER_ERROR.into_response(),
        }
    }

    StatusCode::OK.into_response()
}
