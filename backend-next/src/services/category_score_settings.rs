use std::sync::Arc;

use crate::models::category_score_settings::{CategoryScoreSettings, CreateCategoryScoreSettings};
use crate::DbPool;
use axum::extract::{self, Path};
use axum::http::StatusCode;
use axum::response::IntoResponse;
use axum::Extension;
use diesel::associations::HasTable;
use diesel::{ExpressionMethods, QueryDsl, RunQueryDsl};

const ALLOWED_ANSWERS: [&str; 3] = ["correct", "wrong", "empty"];

pub async fn show(
    db: Extension<Arc<DbPool>>,
    Path(category_score_settings_id): Path<i32>,
) -> impl IntoResponse {
    use crate::schema::category_score_settings::dsl::*;
    let mut con = db.get().expect("Failed to get connection");

    let cat = category_score_settings
        .filter(category_id.eq(category_score_settings_id))
        .load::<CategoryScoreSettings>(&mut con);

    if cat.is_err() {
        let no_result: Vec<CategoryScoreSettings> = Vec::new();

        return (StatusCode::OK, axum::Json(no_result)).into_response();
    }

    (StatusCode::OK, axum::Json(cat.unwrap())).into_response()
}

pub async fn store(
    db: Extension<Arc<DbPool>>,
    extract::Json(form): extract::Json<Vec<CategoryScoreSettings>>,
) -> impl IntoResponse {
    use crate::schema::category_score_settings::dsl::*;
    let mut con = db.get().expect("Failed to get connection");

    for item in form.iter() {
        if !ALLOWED_ANSWERS.contains(&item.answer_type.as_str()) {
            return (StatusCode::BAD_REQUEST).into_response();
        }
    }

    let result = diesel::delete(
        category_score_settings.filter(category_id.eq(form.first().unwrap().category_id)),
    )
    .execute(&mut con);

    if result.is_err() {
        return (StatusCode::INTERNAL_SERVER_ERROR).into_response();
    }

    for item in form.iter() {
        let last_id = category_score_settings::table()
            .select(id)
            .order(id.desc())
            .first::<i32>(&mut con)
            .expect("Failed to get last insert id");

        let result = CategoryScoreSettings::create(
            &mut con,
            &CreateCategoryScoreSettings {
                id: last_id,
                category_id: item.category_id,
                answer_type: item.answer_type.clone(),
                score: item.score,
                created_at: chrono::NaiveDateTime::from_timestamp(0, 0),
                updated_at: chrono::NaiveDateTime::from_timestamp(0, 0),
            },
        );

        if result.is_err() {
            return (StatusCode::INTERNAL_SERVER_ERROR).into_response();
        }
    }

    (StatusCode::OK).into_response()
}
