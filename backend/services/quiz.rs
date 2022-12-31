use crate::models::questions::{types::WithHiddenAnswer, Question};
use actix_session::Session;
use actix_web::{
    get,
    web::{Data, Path, Query},
    HttpResponse,
};
use create_rust_app::Database;
use diesel::{associations::HasTable, prelude::*};
use getrandom::getrandom;

#[tsync::tsync]
#[derive(serde::Deserialize)]
pub struct QuizStarterParams {
    pub category_id: i32,
}

fn realrnd(max: u16) -> u16 {
    let mut buf = [0u8; 2];
    getrandom(&mut buf).unwrap();

    return u16::from_be_bytes(buf) % max;
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

    let query = questions::table()
        .filter(category_id.eq(info.category_id))
        .select((id, question, verified))
        .into_boxed();

    // if so we should return always the same questions saved in the session
    if has_quiz {
        let result = query
            .filter(id.eq_any(quiz_ids.unwrap()))
            .load::<WithHiddenAnswer>(&mut con);

        return HttpResponse::Ok().json(result.unwrap());
    }

    let category = crate::models::categories::Category::read(&mut con, info.category_id);

    if category.is_err() {
        return HttpResponse::NotFound().finish();
    }

    let questions_per_quiz = category.unwrap().questions_per_quiz;

    let result = query.load::<WithHiddenAnswer>(&mut con);

    if result.is_ok() {
        let q: Vec<WithHiddenAnswer> = result.unwrap();
        let mut items: Vec<WithHiddenAnswer> = Vec::new();

        // if the quiz is not active we should shuffle the q and save them in the session, otherwise keep them
        // as they are
        if !has_quiz {
            loop {
                if items.len() == questions_per_quiz as usize {
                    break;
                }

                let item = q
                    .get(realrnd(q.len().try_into().unwrap()) as usize)
                    .unwrap();

                let is_dup = items
                    .iter()
                    .any(|i| i.id == item.id || i.question == item.question);

                if !is_dup {
                    items.push(item.clone());
                }
            }

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

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope.service(index).service(read);
}
