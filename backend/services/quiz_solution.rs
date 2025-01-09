use std::vec;

use crate::models::answers::Answer;
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
// const MAX: u8 = 30;

#[tsync::tsync]
#[derive(serde::Deserialize, serde::Serialize, Clone)]
pub struct QuizSolution {
    pub category_id: i32,
    pub given_answers: Vec<QuizAnswer>,
    pub correct_answers: Vec<QuizAnswer>,
    pub correct_answers_count: f32,
    pub total_questions: i32,
    pub correct_answers_percentage: String,
    pub questions: Vec<Question>,
    pub choices: Vec<Answer>,
    pub multiple_choice_solutions: Vec<Answer>,
    pub score: String,
    pub max_score: u8,
}

#[get("")]
async fn get(db: Data<Database>, session: Session) -> HttpResponse {
    use crate::schema::questions::dsl::*;
    let mut con = db.get_connection();

    let cat_id = session.get::<i32>("quiz_category_id").unwrap().unwrap();
    let category = crate::models::categories::Category::read(&mut con, cat_id).unwrap();
    let answers: Vec<QuizAnswer>;
    let quiz_ids: Vec<i32>;

    match session.get::<Vec<QuizAnswer>>("answers").unwrap() {
        None => return HttpResponse::InternalServerError().finish(),
        Some(a) => answers = a,
    }

    match session.get::<Vec<i32>>("quiz").unwrap() {
        None => return HttpResponse::InternalServerError().finish(),
        Some(q) => quiz_ids = q,
    }

    let query = questions::table()
        .filter(id.eq_any(quiz_ids.clone()))
        .load::<Question>(&mut con);

    if query.is_err() {
        return HttpResponse::InternalServerError().finish();
    }

    let q = query.unwrap();
    let multiple_choice_solutions = crate::models::answers::Answer::table()
        .filter(crate::schema::answers::question_id.eq_any(quiz_ids.clone()))
        .filter(crate::schema::answers::is_correct.eq(true))
        .load::<Answer>(&mut con)
        .unwrap();

    let choices = crate::models::answers::Answer::table()
        .filter(crate::schema::answers::question_id.eq_any(quiz_ids.clone()))
        .load::<Answer>(&mut con)
        .unwrap();

    // create the result object
    let mut result = QuizSolution {
        category_id: category.id,
        given_answers: answers,
        correct_answers: vec![],
        correct_answers_count: 0.0,
        total_questions: q.len() as i32,
        correct_answers_percentage: "0".to_string(),
        questions: q.clone(),
        choices: choices.clone(),
        multiple_choice_solutions: multiple_choice_solutions.clone(),
        score: "0".to_string(),
        max_score: 0,
    };

    let answers = crate::models::answers::Answer::table()
        .filter(crate::schema::answers::question_id.eq_any(quiz_ids.clone()))
        .select((
            crate::schema::answers::id,
            crate::schema::answers::text,
            crate::schema::answers::is_correct,
        ))
        .load::<(i32, String, bool)>(&mut con);

    // loop through the questions and check if the answer is correct, if so add it to the correct_answers array
    for quest in q.into_iter() {
        let given_answers: Vec<_> = result
            .given_answers
            .iter()
            .filter(|a| a.question_id == quest.id)
            .collect();

        if given_answers.len() == 0 {
            continue;
        }

        let has_answer =
            quest.answer.is_some() || (quest.is_multiple_choice && given_answers.len() > 0);

        // ! warning, there are some questions without an answer, those will be skipped
        if !has_answer {
            continue;
        }
        for ans in given_answers.iter() {
            if quest.is_multiple_choice {
                let question_correct_answers = multiple_choice_solutions
                    .iter()
                    .filter(|a| a.question_id == quest.id)
                    .map(|a| a.id)
                    .collect::<Vec<i32>>();

                let is_correct = question_correct_answers.contains(&ans.answer_id.unwrap());

                if is_correct {
                    if question_correct_answers.len() == 1 {
                        result.correct_answers_count += 1.0;
                    } else {
                        result.correct_answers_count += 1.0 / question_correct_answers.len() as f32;
                    }
                }

                let correct_answers = answers
                    .as_ref()
                    .unwrap()
                    .iter()
                    .filter(|a| a.2)
                    .map(|a| a.0)
                    .collect::<Vec<i32>>();

                for correct_answer in correct_answers {
                    result.correct_answers.push(QuizAnswer {
                        question_id: quest.id,
                        answer: None,
                        answer_id: Some(correct_answer),
                    });
                }
            } else if ans.answer.unwrap() == quest.answer.unwrap() {
                result.correct_answers_count += 1.0;
                result.correct_answers.push(QuizAnswer {
                    question_id: quest.id,
                    answer: quest.answer,
                    answer_id: None,
                });
            }
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
            - ((result.given_answers.len() as f32 - result.correct_answers_count)
                * (score.wrong_answer as f32))
    );

    result.max_score =
        ((score.correct_answer as f32) * category.questions_per_quiz as f32).floor() as u8;

    return HttpResponse::Ok().json(result);
}

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope.service(get);
}
