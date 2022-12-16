use actix_session::Session;
use actix_web::{
    delete, get, post,
    web::{Data, Json},
    HttpResponse,
};
use create_rust_app::Database;

use crate::models::categories::Category;

#[tsync::tsync]
#[derive(serde::Serialize)]
pub struct QuizStatus {
    pub category: Option<Category>,
    pub active: bool,
}

#[tsync::tsync]
#[derive(serde::Deserialize, serde::Serialize, Clone)]
pub struct QuizAnswer {
    pub question_id: i32,
    pub answer: Option<bool>,
}

#[get("is-active")]
async fn is_active(db: Data<Database>, session: Session) -> HttpResponse {
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

#[get("")]
async fn index(session: Session) -> HttpResponse {
    let answers = session.get::<Vec<QuizAnswer>>("answers").unwrap();

    return HttpResponse::Ok().json(answers);
}

#[post("")]
async fn store(session: Session, answers: Json<Vec<QuizAnswer>>) -> HttpResponse {
    if session.insert("answers", answers.into_inner()).is_err() {
        return HttpResponse::InternalServerError().finish();
    }

    return HttpResponse::Ok().finish();
}

#[delete("")]
async fn destroy(session: Session) -> HttpResponse {
    let quiz = vec!["answers", "quiz", "quiz_category_id"];

    quiz.iter().for_each(|key| {
        session.remove(key);
    });

    HttpResponse::InternalServerError().finish()
}

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope
        .service(is_active)
        .service(index)
        .service(store)
        .service(destroy);
}
