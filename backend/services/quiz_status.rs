use actix_session::Session;
use actix_web::{get, web::Data, HttpResponse};
use create_rust_app::Database;

use crate::models::categories::Category;

#[tsync::tsync]
#[derive(serde::Serialize)]
pub struct QuizStatus {
    pub category: Option<Category>,
    pub active: bool,
}

#[get("")]
async fn index(db: Data<Database>, session: Session) -> HttpResponse {
    let mut con = db.get_connection();
    let active = session.get::<Vec<i32>>("quiz").unwrap().is_some();

    if active {
        let category_id = session.get::<i32>("quiz_category_id").unwrap();

        let category = Category::read(&mut con, category_id.unwrap());

        if category.is_err() {
            return HttpResponse::InternalServerError().finish();
        }

        return HttpResponse::Ok().json(QuizStatus {
            category: Some(category.unwrap()),
            active: true,
        });
    }

    HttpResponse::Ok().json(QuizStatus {
        category: None,
        active: false,
    })
}

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope.service(index);
}
