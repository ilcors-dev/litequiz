use crate::models::questions::{types::WithHiddenAnswer, Question, QuestionForm};
use actix_session::Session;
use actix_web::{
    delete, get, post, put,
    web::{Data, Json, Path, Query},
    Error, HttpResponse, Result,
};
use create_rust_app::Database;
use diesel::{associations::HasTable, prelude::*};
use rand::{seq::SliceRandom, thread_rng};

#[tsync::tsync]
#[derive(serde::Deserialize)]
pub struct QuizStarterParams {
    pub category_id: i32,
}

#[get("")]
async fn index(
    db: Data<Database>,
    session: Session,
    Query(info): Query<QuizStarterParams>,
) -> HttpResponse {
    use crate::schema::questions::dsl::*;
    let mut con = db.get_connection();

    // check whether the quiz is currently active
    let quiz_ids = session.get::<Vec<i32>>("quiz").unwrap();
    let has_quiz = quiz_ids.is_some();

    let mut query = questions::table().into_boxed();

    // if so we should return always the same questions saved in the session
    if has_quiz {
        query = query.filter(id.eq_any(quiz_ids.unwrap()));
    }

    let result = query
        .filter(category_id.eq(info.category_id))
        .select((id, question))
        .load::<WithHiddenAnswer>(&mut con);

    if result.is_ok() {
        let mut items: Vec<WithHiddenAnswer> = result.unwrap();

        // if the quiz is not active we should shuffle the questions and save them in the session, otherwise keep them
        // as they are
        if !has_quiz {
            items.shuffle(&mut thread_rng());

            items = items
                .into_iter()
                .take(40 as usize)
                .collect::<Vec<WithHiddenAnswer>>();

            session
                .insert("quiz_category_id", info.category_id)
                .expect("Error saving quiz category to session");

            session
                .insert("quiz", items.iter().map(|q| q.id).collect::<Vec<i32>>())
                .expect("Error saving quiz to session");
        }

        return HttpResponse::Ok().json(items);
    }

    HttpResponse::InternalServerError().finish()
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

#[delete("")]
async fn destroy(session: Session) -> HttpResponse {
    let ok = session.remove("quiz");

    if ok.is_some() {
        return HttpResponse::Ok().finish();
    }

    HttpResponse::InternalServerError().finish()
}

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope
        .service(index)
        .service(read)
        .service(create)
        .service(update)
        .service(destroy);
}
