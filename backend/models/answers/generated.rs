/* This file is generated and managed by dsync */

use crate::diesel::*;
use crate::schema::*;
use diesel::QueryResult;
use serde::{Deserialize, Serialize};
use crate::models::questions::Question;

type Connection = create_rust_app::Connection;

#[tsync::tsync]
#[derive(Debug, Serialize, Deserialize, Clone, Queryable, Insertable, AsChangeset, Identifiable, Associations)]
#[diesel(table_name=answers, primary_key(id),belongs_to(Question, foreign_key=question_id))]
pub struct Answer {
    pub id: i32,
    pub question_id: i32,
    pub text: String,
    pub is_correct: bool,
    pub created_at: chrono::NaiveDateTime,
    pub updated_at: chrono::NaiveDateTime,
}

#[tsync::tsync]
#[derive(Debug, Serialize, Deserialize, Clone, Queryable, Insertable, AsChangeset)]
#[diesel(table_name=answers)]
pub struct AnswerForm {
    pub question_id: i32,
    pub text: String,
    pub is_correct: bool,
}

#[tsync::tsync]
#[derive(Serialize)]
pub struct PaginationResult<T> {
    pub items: Vec<T>,
    pub total_items: i64,
    /// 0-based index
    pub page: i64,
    pub page_size: i64,
    pub num_pages: i64,
}

impl Answer {
    pub fn create(db: &mut Connection, item: &AnswerForm) -> QueryResult<Answer> {
        use crate::schema::answers::dsl::*;

        insert_into(answers).values(item).get_result::<Answer>(db)
    }

    pub fn read(db: &mut Connection, param_id: i32) -> QueryResult<Answer> {
        use crate::schema::answers::dsl::*;

        answers.filter(id.eq(param_id)).first::<Answer>(db)
    }

    /// Paginates through the table where page is a 0-based index (i.e. page 0 is the first page)
    pub fn paginate(db: &mut Connection, page: i64, page_size: i64) -> QueryResult<PaginationResult<Answer>> {
        use crate::schema::answers::dsl::*;

        let page_size = if page_size < 1 { 1 } else { page_size };
        let total_items = answers.count().get_result(db)?;
        let items = answers.limit(page_size).offset(page * page_size).load::<Answer>(db)?;

        Ok(PaginationResult {
            items,
            total_items,
            page,
            page_size,
            /* ceiling division of integers */
            num_pages: total_items / page_size + i64::from(total_items % page_size != 0)
        })
    }

    pub fn update(db: &mut Connection, param_id: i32, item: &AnswerForm) -> QueryResult<Answer> {
        use crate::schema::answers::dsl::*;

        diesel::update(answers.filter(id.eq(param_id))).set(item).get_result(db)
    }

    pub fn delete(db: &mut Connection, param_id: i32) -> QueryResult<usize> {
        use crate::schema::answers::dsl::*;

        diesel::delete(answers.filter(id.eq(param_id))).execute(db)
    }
}
