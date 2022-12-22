/* This file is generated and managed by dsync */

use crate::diesel::*;
use crate::schema::*;
use diesel::QueryResult;
use serde::{Deserialize, Serialize};
use crate::models::categories::Category;

type Connection = create_rust_app::Connection;

#[tsync::tsync]
#[derive(Debug, Serialize, Deserialize, Clone, Queryable, Insertable, AsChangeset, Identifiable, Associations)]
#[diesel(table_name=category_score_settings, primary_key(id),belongs_to(Category, foreign_key=category_id))]
pub struct CategoryScoreSetting {
    pub id: i32,
    pub answer_type: String,
    pub score: f64,
    pub category_id: i32,
    pub created_at: chrono::NaiveDateTime,
    pub updated_at: chrono::NaiveDateTime,
}

#[tsync::tsync]
#[derive(Debug, Serialize, Deserialize, Clone, Queryable, Insertable, AsChangeset)]
#[diesel(table_name=category_score_settings)]
pub struct CategoryScoreSettingForm {
    pub answer_type: String,
    pub score: f64,
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

impl CategoryScoreSetting {
    pub fn create(db: &mut Connection, item: &CategoryScoreSettingForm) -> QueryResult<CategoryScoreSetting> {
        use crate::schema::category_score_settings::dsl::*;

        insert_into(category_score_settings).values(item).get_result::<CategoryScoreSetting>(db)
    }

    pub fn read(db: &mut Connection, param_id: i32) -> QueryResult<CategoryScoreSetting> {
        use crate::schema::category_score_settings::dsl::*;

        category_score_settings.filter(id.eq(param_id)).first::<CategoryScoreSetting>(db)
    }

    /// Paginates through the table where page is a 0-based index (i.e. page 0 is the first page)
    pub fn paginate(db: &mut Connection, page: i64, page_size: i64) -> QueryResult<PaginationResult<CategoryScoreSetting>> {
        use crate::schema::category_score_settings::dsl::*;

        let page_size = if page_size < 1 { 1 } else { page_size };
        let total_items = category_score_settings.count().get_result(db)?;
        let items = category_score_settings.limit(page_size).offset(page * page_size).load::<CategoryScoreSetting>(db)?;

        Ok(PaginationResult {
            items,
            total_items,
            page,
            page_size,
            /* ceiling division of integers */
            num_pages: total_items / page_size + i64::from(total_items % page_size != 0)
        })
    }

    pub fn update(db: &mut Connection, param_id: i32, item: &CategoryScoreSettingForm) -> QueryResult<CategoryScoreSetting> {
        use crate::schema::category_score_settings::dsl::*;

        diesel::update(category_score_settings.filter(id.eq(param_id))).set(item).get_result(db)
    }

    pub fn delete(db: &mut Connection, param_id: i32) -> QueryResult<usize> {
        use crate::schema::category_score_settings::dsl::*;

        diesel::delete(category_score_settings.filter(id.eq(param_id))).execute(db)
    }
}
