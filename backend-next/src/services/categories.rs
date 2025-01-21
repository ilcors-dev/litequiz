use std::sync::Arc;

use axum::extract::Path;
use axum::http::StatusCode;
use axum::response::IntoResponse;
use axum::{Extension, Form};
use diesel::{associations::HasTable, QueryDsl, RunQueryDsl};

use crate::diesel::ExpressionMethods;
use crate::models::categories::{Categories, UpdateCategories};
use crate::DbPool;

#[tsync::tsync]
#[derive(serde::Deserialize, serde::Serialize, Clone)]
pub struct CategoryWithQuestionCount {
    pub id: i32,
    pub name: String,
    pub question_count: i64,
}

pub async fn index(db: Extension<Arc<DbPool>>) -> impl IntoResponse {
    use crate::schema::categories::dsl::*;
    use crate::schema::questions::dsl::*;

    let mut con = db.get().expect("Failed to get connection");

    let cat = categories::table().load::<Categories>(&mut con);

    if cat.is_err() {
        return (StatusCode::INTERNAL_SERVER_ERROR).into_response();
    }

    let mut result: Vec<CategoryWithQuestionCount> = Vec::new();

    for c in cat.unwrap() {
        let count = questions::table()
            .into_boxed()
            .filter(category_id.eq(c.id))
            .count()
            .get_result::<i64>(&mut con)
            .unwrap();

        result.push(CategoryWithQuestionCount {
            id: c.id,
            name: c.name,
            question_count: count,
        });
    }

    return (StatusCode::OK, axum::Json(result)).into_response();
}

pub async fn show(db: Extension<Arc<DbPool>>, Path(categ_id): Path<i32>) -> impl IntoResponse {
    let mut con = db.get().expect("Failed to get connection");

    let cat = Categories::read(&mut con, categ_id);

    if cat.is_err() {
        return (StatusCode::NOT_FOUND).into_response();
    }

    return (StatusCode::OK, axum::Json(cat.unwrap())).into_response();
}

pub async fn update(
    db: Extension<Arc<DbPool>>,
    Path(categ_id): Path<i32>,
    Form(form): Form<UpdateCategories>,
) -> impl IntoResponse {
    let mut con = db.get().expect("Failed to get connection");

    let cat = Categories::read(&mut con, categ_id);

    if cat.is_err() {
        return (StatusCode::NOT_FOUND).into_response();
    }

    let cat = Categories::update(&mut con, categ_id, &form);

    if cat.is_err() {
        return (StatusCode::INTERNAL_SERVER_ERROR).into_response();
    }

    return (StatusCode::OK, axum::Json(cat.unwrap())).into_response();
}
