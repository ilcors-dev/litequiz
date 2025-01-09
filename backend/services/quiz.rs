use crate::models::questions::{
    types::{MultipleChoice, PartialQuestion, WithHiddenAnswer},
    Question,
};
use actix_session::Session;
use actix_web::{
    get,
    web::{Data, Path, Query},
    HttpResponse,
};
use create_rust_app::Database;
use diesel::{
    associations::HasTable,
    prelude::*,
    r2d2::{ConnectionManager, PooledConnection},
};
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

    let query = questions::table()
        .filter(category_id.eq(info.category_id))
        .select((id, question, verified, is_multiple_choice))
        .into_boxed();

    // if so we should return always the same questions saved in the session
    // if has_quiz {
    //    let result = query
    //        .filter(id.eq_any(quiz_ids.unwrap()))
    //        .load::<WithHiddenAnswer>(&mut con);

    //    return HttpResponse::Ok().json(result.unwrap());
    // }

    let category = crate::models::categories::Category::read(&mut con, info.category_id);

    if category.is_err() {
        return HttpResponse::NotFound().finish();
    }

    let questions_per_quiz = category.unwrap().questions_per_quiz;

    let result = if has_quiz {
        query
            .filter(id.eq_any(quiz_ids.unwrap()))
            .load::<PartialQuestion>(&mut con)
    } else {
        query.load::<PartialQuestion>(&mut con)
    };

    if result.is_ok() {
        let mut q: Vec<PartialQuestion> = result.unwrap();
        let mut items: Vec<WithHiddenAnswer> = Vec::new();

        // if the quiz is not active we should shuffle the q and save them in the session, otherwise keep them
        // as they are
        if !has_quiz {
            let mut rng = thread_rng();
            q.shuffle(&mut rng);

            q.truncate(questions_per_quiz as usize);

            for item in q.iter() {
                add_question_with_hidden_answer(&item, &mut con, &mut items);
            }
        } else {
            for item in q.into_iter() {
                add_question_with_hidden_answer(&item, &mut con, &mut items);
            }
        }

        session
            .insert("quiz_category_id", info.category_id)
            .expect("Error saving quiz category to session");

        session
            .insert("quiz", items.iter().map(|q| q.id).collect::<Vec<i32>>())
            .expect("Error saving quiz to session");

        return HttpResponse::Ok().json(items);
    }

    HttpResponse::InternalServerError().finish()
}

fn add_question_with_hidden_answer(
    item: &PartialQuestion,
    con: &mut PooledConnection<ConnectionManager<SqliteConnection>>,
    items: &mut Vec<WithHiddenAnswer>,
) {
    if item.is_multiple_choice {
        let choices: Result<Vec<(i32, String)>, diesel::result::Error> =
            crate::models::answers::Answer::table()
                .filter(crate::schema::answers::question_id.eq(item.id))
                .select((crate::schema::answers::id, crate::schema::answers::text))
                .load::<(i32, String)>(con);

        if choices.is_ok() {
            items.push(WithHiddenAnswer {
                id: item.id,
                question: item.question.clone(),
                verified: item.verified,
                is_multiple_choice: item.is_multiple_choice,
                choices: choices
                    .unwrap()
                    .iter()
                    .map(|(item_id, text)| MultipleChoice {
                        id: *item_id,
                        text: text.clone(),
                    })
                    .collect(),
            });
        }
    } else {
        items.push(WithHiddenAnswer {
            id: item.id,
            question: item.question.clone(),
            verified: item.verified,
            is_multiple_choice: item.is_multiple_choice,
            choices: Vec::new(),
        });
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

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope.service(index).service(read);
}
