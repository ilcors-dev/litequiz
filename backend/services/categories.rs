use actix_web::{
    get, put,
    web::{Data, Json, Path},
    HttpResponse,
};
use create_rust_app::Database;
use diesel::{associations::HasTable, QueryDsl, RunQueryDsl};

use crate::models::categories::Category;
use crate::{diesel::ExpressionMethods, models::categories::CategoryForm};

#[tsync::tsync]
#[derive(serde::Deserialize, serde::Serialize, Clone)]
pub struct CategoryWithQuestionCount {
    pub id: i32,
    pub name: String,
    pub question_count: i64,
}

#[get("")]
async fn index(db: Data<Database>) -> HttpResponse {
    use crate::schema::categories::dsl::*;
    use crate::schema::questions::dsl::*;

    let mut con = db.get_connection();

    let cat = categories::table().load::<Category>(&mut con);

    if cat.is_err() {
        return HttpResponse::InternalServerError().finish();
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

    return HttpResponse::Ok().json(result);
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

#[put("/{id}")]
async fn update(
    db: Data<Database>,
    category_id: Path<i32>,
    form: Json<CategoryForm>,
) -> HttpResponse {
    let mut con = db.get_connection();

    let id = category_id.into_inner();

    let cat = Category::read(&mut con, id);

    if cat.is_err() {
        return HttpResponse::NotFound().finish();
    }

    let cat = Category::update(&mut con, id, &form);

    if cat.is_err() {
        return HttpResponse::InternalServerError().finish();
    }

    return HttpResponse::Ok().json(cat.unwrap());
}

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope.service(index).service(show).service(update);
}
