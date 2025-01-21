use std::sync::Arc;

use crate::{
    models::questions::{
        types::{MultipleChoice, PartialQuestion, WithHiddenAnswer},
        Questions,
    },
    DbPool,
};
use axum::{extract::Path, http::StatusCode, response::IntoResponse, Extension, Json};
use diesel::{
    associations::HasTable,
    prelude::*,
    r2d2::{ConnectionManager, PooledConnection},
};
use rand::{rngs::OsRng, seq::SliceRandom};

#[derive(serde::Serialize)]
pub struct IndexResponse {}

pub async fn index(
    db: Extension<Arc<DbPool>>,
    session: tower_sessions::Session,
    Path(categ_id): Path<i32>,
) -> impl IntoResponse {
    use crate::schema::questions::dsl::*;
    let mut con = db.get().expect("Failed to get connection");

    // check whether the quiz is currently active
    let quiz_ids = session.get::<Vec<i32>>("quiz").await.unwrap();
    let has_quiz = quiz_ids.is_some();

    // if so we should return always the same questions saved in the session
    if has_quiz {
        println!("{:?}", quiz_ids.as_ref().unwrap());

        let q = questions::table()
            .filter(id.eq_any(quiz_ids.unwrap()))
            .select((id, question, verified, is_multiple_choice))
            .load::<PartialQuestion>(&mut con);

        let mut items: Vec<WithHiddenAnswer> = Vec::new();

        for item in q.as_ref().unwrap() {
            add_question_with_hidden_answer(item, &mut con, &mut items);
        }

        return (StatusCode::OK, Json(items)).into_response();
    }

    let query = questions::table()
        .filter(category_id.eq(categ_id))
        .select((id, question, verified, is_multiple_choice))
        .into_boxed();

    let category = match crate::models::categories::Categories::read(&mut con, categ_id) {
        Ok(c) => Some(c),
        Err(_) => return StatusCode::NOT_FOUND.into_response(),
    };

    let questions_per_quiz = category.unwrap().questions_per_quiz;

    let result = query.load::<PartialQuestion>(&mut con);

    if result.is_ok() {
        let mut q: Vec<PartialQuestion> = result.unwrap();
        let mut items: Vec<WithHiddenAnswer> = Vec::new();

        // if the quiz is not active we should shuffle the q and save them in the session, otherwise keep them
        // as they are
        let mut rng = OsRng;
        q.shuffle(&mut rng);

        q.truncate(questions_per_quiz as usize);

        for item in q.iter() {
            add_question_with_hidden_answer(item, &mut con, &mut items);
        }

        session
            .insert("quiz_category_id", categ_id)
            .await
            .expect("Error saving quiz category to session");
        println!("{:?}", items.iter().map(|q| q.id).collect::<Vec<i32>>());

        session
            .insert("quiz", items.iter().map(|q| q.id).collect::<Vec<i32>>())
            .await
            .expect("Error saving quiz to session");

        return (StatusCode::OK, Json(items)).into_response();
    }

    StatusCode::NOT_FOUND.into_response()
}

fn add_question_with_hidden_answer(
    item: &PartialQuestion,
    con: &mut PooledConnection<ConnectionManager<SqliteConnection>>,
    items: &mut Vec<WithHiddenAnswer>,
) {
    if item.is_multiple_choice {
        let choices: Result<Vec<(i32, String)>, diesel::result::Error> =
            crate::models::answers::Answers::table()
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

pub async fn read(db: Extension<Arc<DbPool>>, Path(item_id): Path<i32>) -> impl IntoResponse {
    let mut con = db.get().expect("Failed to get connection");

    let result = Questions::read(&mut con, item_id);

    if result.is_ok() {
        let todo = result.unwrap();

        (StatusCode::OK, Json(todo)).into_response()
    } else {
        StatusCode::NOT_FOUND.into_response()
    }
}
