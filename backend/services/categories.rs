use actix_web::{
    get,
    web::{Data, Path},
    HttpResponse,
};
use create_rust_app::Database;
use diesel::{associations::HasTable, RunQueryDsl};

use crate::models::categories::Category;

#[tsync::tsync]
#[derive(serde::Deserialize)]
pub struct PaginationParams {
    pub page: i64,
    pub page_size: i64,
}

#[get("")]
async fn index(db: Data<Database>) -> HttpResponse {
    use crate::schema::categories::dsl::*;
    let mut con = db.get_connection();

    let cat = categories::table().load::<Category>(&mut con);

    if cat.is_err() {
        return HttpResponse::InternalServerError().finish();
    }

    return HttpResponse::Ok().json(cat.unwrap());
}

#[get("/{id}")]
async fn show(db: Data<Database>, category_id: Path<i32>) -> HttpResponse {
    let mut con = db.get_connection();

    let cat = Category::read(&mut con, category_id.into_inner());

    if cat.is_err() {
        return HttpResponse::NotFound().finish();
    }

    return HttpResponse::Ok().json(cat.unwrap());
}

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope.service(index).service(show);
}
