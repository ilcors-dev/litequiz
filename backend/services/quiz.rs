use crate::models::questions::{Question, QuestionForm};
use actix_web::{
    delete, get, post, put,
    web::{Data, Json, Path, Query},
    Error, HttpResponse, Result,
};
use create_rust_app::Database;

#[tsync::tsync]
#[derive(serde::Deserialize)]
pub struct PaginationParams {
    pub page: i64,
    pub page_size: i64,
}

#[get("")]
async fn index(db: Data<Database>, Query(info): Query<PaginationParams>) -> HttpResponse {
    let mut con = db.get_connection();

    let result = Question::get(&mut con);

    if result.is_ok() {
        let items = result.unwrap();

        let random = items
            .into_iter()
            .take(40 as usize)
            .collect::<Vec<Question>>();

        HttpResponse::Ok().json(random)
    } else {
        HttpResponse::InternalServerError().finish()
    }
}

#[get("/{id}")]
async fn read(db: Data<Database>, item_id: Path<i32>) -> HttpResponse {
    let mut con = db.get_connection();

    let result = Question::read(&mut con, item_id.into_inner());

    if result.is_ok() {
        let todo = result.unwrap();

        HttpResponse::Ok().json(todo)
    } else {
        HttpResponse::NotFound().finish()
    }
}

#[post("")]
async fn create(db: Data<Database>, Json(item): Json<QuestionForm>) -> Result<HttpResponse, Error> {
    let mut con = db.get_connection();

    let result = Question::create(&mut con, &item).expect("Creation error");

    Ok(HttpResponse::Created().json(result))
}

#[put("/{id}")]
async fn update(
    db: Data<Database>,
    item_id: Path<i32>,
    Json(item): Json<QuestionForm>,
) -> HttpResponse {
    let mut con = db.get_connection();

    let result = Question::update(&mut con, item_id.into_inner(), &item);

    if result.is_ok() {
        HttpResponse::Ok().finish()
    } else {
        HttpResponse::InternalServerError().finish()
    }
}

#[delete("/{id}")]
async fn destroy(db: Data<Database>, item_id: Path<i32>) -> HttpResponse {
    let mut con = db.get_connection();

    let result = Question::delete(&mut con, item_id.into_inner());

    if result.is_ok() {
        HttpResponse::Ok().finish()
    } else {
        HttpResponse::InternalServerError().finish()
    }
}

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope
        .service(index)
        .service(read)
        .service(create)
        .service(update)
        .service(destroy);
}
