use std::vec;

use crate::models::category_score_settings::extend::get_category_scores;
use crate::{models::questions::Question, services::quiz_status::QuizAnswer};
use actix_session::Session;
use actix_web::web::Data;
use actix_web::{get, HttpResponse};
use create_rust_app::Database;
use diesel::associations::HasTable;
use diesel::prelude::*;

// const CORRECT_ANSWER: f32 = 0.85;
// const WRONG_ANSWER: f32 = 0.64;
const MAX: u8 = 30;

#[tsync::tsync]
#[derive(serde::Deserialize, serde::Serialize, Clone)]
pub struct QuizSolution {
    pub category_id: i32,
    pub given_answers: Vec<QuizAnswer>,
    pub correct_answers: Vec<QuizAnswer>,
    pub correct_answers_count: i32,
    pub total_questions: i32,
    pub correct_answers_percentage: String,
    pub questions: Vec<Question>,
    pub score: String,
    pub max_score: u8,
}

#[get("")]
async fn get(db: Data<Database>, session: Session) -> HttpResponse {
    println!("miao\n\n");
    use crate::schema::questions::dsl::*;
    let mut con = db.get_connection();

    let answers = session.get::<Vec<QuizAnswer>>("answers").unwrap().unwrap();

    let quiz_ids = session.get::<Vec<i32>>("quiz").unwrap();

    let query = questions::table()
        .filter(id.eq_any(quiz_ids.clone().unwrap()))
        .load::<Question>(&mut con);

    if query.is_err() {
        return HttpResponse::InternalServerError().finish();
    }

    let q = query.unwrap();

    let cat_id = session.get::<i32>("quiz_category_id").unwrap().unwrap();

    // create the result object
    let mut result = QuizSolution {
        category_id: cat_id,
        given_answers: answers,
        correct_answers: vec![],
        correct_answers_count: 0,
        total_questions: q.len() as i32,
        correct_answers_percentage: "0".to_string(),
        questions: q.clone(),
        score: "0".to_string(),
        max_score: MAX,
    };

    // loop through the questions and check if the answer is correct, if so add it to the correct_answers array
    for quest in q.into_iter() {
        let ans = result
            .given_answers
            .iter()
            .find(|a| a.question_id == quest.id);

        if ans.is_none() {
            continue;
        }

        // ! warning, there are some questions without an answer, those will be skipped
        if quest.answer.is_none() {
            continue;
        }

        if ans.unwrap().answer.unwrap() == quest.answer.unwrap() {
            result.correct_answers_count += 1;
            result.correct_answers.push(QuizAnswer {
                question_id: quest.id,
                answer: quest.answer,
            });
        }
    }

    result.correct_answers_percentage = format!(
        "{:.2}",
        (result.correct_answers_count as f32 / result.total_questions as f32) * 100.0
    );

    let score = get_category_scores(db, cat_id).unwrap();

    result.score = format!(
        "{:.2}",
        result.correct_answers_count as f32 * (score.correct_answer as f32)
            - ((result.given_answers.len() as i32 - result.correct_answers_count) as f32
                * (score.wrong_answer as f32))
    );

    return HttpResponse::Ok().json(result);
}

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope.service(get);
}
