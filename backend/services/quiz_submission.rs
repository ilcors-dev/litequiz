use crate::models::questions::types::WithAnswer;
use crate::{models::questions::Question, services::quiz_status::QuizAnswer};
use actix_session::Session;
use actix_web::web::Data;
use actix_web::{get, post, web::Json, HttpResponse};
use create_rust_app::Database;
use diesel::associations::HasTable;
use diesel::prelude::*;

#[tsync::tsync]
#[derive(serde::Deserialize, serde::Serialize)]
pub struct QuizSubmission {
    pub category_id: i32,
    pub given_answers: Vec<QuizAnswer>,
    pub correct_answers: Vec<QuizAnswer>,
    pub correct_answers_count: i32,
    pub total_questions: i32,
    pub correct_answers_percentage: String,
    pub questions: Vec<WithAnswer>,
}

#[get("")]
async fn get(session: Session) -> HttpResponse {
    let last_quiz = session.get::<QuizSubmission>("last_quiz_result").unwrap();

    return HttpResponse::Ok().json(last_quiz);
}

#[post("")]
async fn store(
    db: Data<Database>,
    session: Session,
    answers: Json<Vec<QuizAnswer>>,
) -> HttpResponse {
    use crate::schema::questions::dsl::*;
    let mut con = db.get_connection();

    let _answers = answers.into_inner();

    let quiz_ids = session.get::<Vec<i32>>("quiz").unwrap();

    let query = questions::table()
        .filter(id.eq_any(quiz_ids.unwrap()))
        .load::<Question>(&mut con);

    if query.is_err() {
        return HttpResponse::InternalServerError().finish();
    }

    let q = query.unwrap();

    // create the result object
    let mut result = QuizSubmission {
        category_id: session.get::<i32>("quiz_category_id").unwrap().unwrap(),
        given_answers: _answers,
        correct_answers: vec![],
        correct_answers_count: 0,
        total_questions: q.len() as i32,
        correct_answers_percentage: "0".to_string(),
        questions: q
            .clone()
            .into_iter()
            .map(|q| WithAnswer {
                id: q.id,
                question: q.question,
                answer: q.answer,
            })
            .collect(),
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

        if ans.unwrap().answer.unwrap() == quest.answer {
            result.correct_answers_count += 1;
            result.correct_answers.push(QuizAnswer {
                question_id: quest.id,
                answer: Some(quest.answer),
            });
        }
    }

    // calculate the percentage
    let perc = (result.correct_answers_count as f32 / result.total_questions as f32) * 100.0;
    result.correct_answers_percentage = format!("{:.2}", perc);

    session
        .insert("last_quiz_result", result)
        .expect("Failed to insert quiz result into session!");

    return HttpResponse::Ok().json(true);
}

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope.service(get).service(store);
}
