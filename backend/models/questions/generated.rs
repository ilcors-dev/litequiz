/* This file is generated and managed by dsync */

use crate::diesel::*;
use crate::schema::*;
use diesel::QueryResult;
use serde::{Deserialize, Serialize};
use crate::models::categories::Category;

type Connection = create_rust_app::Connection;

#[tsync::tsync]
#[derive(Debug, Serialize, Deserialize, Clone, Queryable, Insertable, AsChangeset, Identifiable, Associations)]
#[diesel(table_name=questions, primary_key(id),belongs_to(Category, foreign_key=category_id))]
pub struct Question {
    pub id: i32,
    pub question: String,
    pub answer: bool,
    pub category_id: i32,
    pub created_at: chrono::NaiveDateTime,
    pub updated_at: chrono::NaiveDateTime,
}

#[tsync::tsync]
#[derive(Debug, Serialize, Deserialize, Clone, Queryable, Insertable, AsChangeset)]
#[diesel(table_name=questions)]
pub struct QuestionForm {
    pub question: String,
    pub answer: bool,
    pub category_id: i32,
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

impl Question {
    pub fn create(db: &mut Connection, item: &QuestionForm) -> QueryResult<Question> {
        use crate::schema::questions::dsl::*;

        insert_into(questions).values(item).get_result::<Question>(db)
    }

    pub fn read(db: &mut Connection, param_id: i32) -> QueryResult<Question> {
        use crate::schema::questions::dsl::*;

        questions.filter(id.eq(param_id)).first::<Question>(db)
    }

    /// Paginates through the table where page is a 0-based index (i.e. page 0 is the first page)
    pub fn paginate(db: &mut Connection, page: i64, page_size: i64) -> QueryResult<PaginationResult<Question>> {
        use crate::schema::questions::dsl::*;

        let page_size = if page_size < 1 { 1 } else { page_size };
        let total_items = questions.count().get_result(db)?;
        let items = questions.limit(page_size).offset(page * page_size).load::<Question>(db)?;

        Ok(PaginationResult {
            items,
            total_items,
            page,
            page_size,
            /* ceiling division of integers */
            num_pages: total_items / page_size + i64::from(total_items % page_size != 0)
        })
    }

    pub fn update(db: &mut Connection, param_id: i32, item: &QuestionForm) -> QueryResult<Question> {
        use crate::schema::questions::dsl::*;

        diesel::update(questions.filter(id.eq(param_id))).set(item).get_result(db)
    }

    pub fn delete(db: &mut Connection, param_id: i32) -> QueryResult<usize> {
        use crate::schema::questions::dsl::*;

        diesel::delete(questions.filter(id.eq(param_id))).execute(db)
    }
}
