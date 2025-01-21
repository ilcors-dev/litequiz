use std::sync::Arc;

use axum::Extension;
use diesel::{ExpressionMethods, QueryDsl, RunQueryDsl};

use crate::models::category_score_settings::CategoryScoreSettings;
use crate::DbPool;

#[derive(Debug)]
pub struct Score {
    pub correct_answer: f64,
    pub wrong_answer: f64,
    pub empty_answer: f64,
}

pub fn get_category_scores(
    db: Extension<Arc<DbPool>>,
    cat_id: i32,
) -> Result<Score, diesel::result::Error> {
    use crate::schema::category_score_settings::dsl::*;
    let mut con = db.get().expect("Failed to get connection");

    let category_scores = category_score_settings
        .filter(category_id.eq(cat_id))
        .load::<CategoryScoreSettings>(&mut con);

    if category_scores.is_err() {
        return Err(category_scores.err().unwrap());
    }

    let category_scores = category_scores.unwrap();

    let result: Score = Score {
        correct_answer: category_scores
            .iter()
            .find(|x| x.answer_type == "correct")
            .unwrap()
            .score,
        wrong_answer: category_scores
            .iter()
            .find(|x| x.answer_type == "wrong")
            .unwrap()
            .score,
        empty_answer: category_scores
            .iter()
            .find(|x| x.answer_type == "empty")
            .unwrap()
            .score,
    };

    return Ok(result);
}
