/* This file is generated and managed by dsync */

use crate::diesel::*;
use crate::schema::*;
use diesel::QueryResult;
use serde::{Deserialize, Serialize};


type Connection = create_rust_app::Connection;

#[tsync::tsync]
#[derive(Debug, Serialize, Deserialize, Clone, Queryable, Insertable, AsChangeset, Identifiable)]
#[diesel(table_name=categories, primary_key(id))]
pub struct Category {
    pub id: i32,
    pub name: String,
    pub created_at: chrono::NaiveDateTime,
    pub updated_at: chrono::NaiveDateTime,
}

#[tsync::tsync]
#[derive(Debug, Serialize, Deserialize, Clone, Queryable, Insertable, AsChangeset)]
#[diesel(table_name=categories)]
pub struct CategoryForm {
    pub name: String,
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

impl Category {
    pub fn create(db: &mut Connection, item: &CategoryForm) -> QueryResult<Category> {
        use crate::schema::categories::dsl::*;

        insert_into(categories).values(item).get_result::<Category>(db)
    }

    pub fn read(db: &mut Connection, param_id: i32) -> QueryResult<Category> {
        use crate::schema::categories::dsl::*;

        categories.filter(id.eq(param_id)).first::<Category>(db)
    }

    /// Paginates through the table where page is a 0-based index (i.e. page 0 is the first page)
    pub fn paginate(db: &mut Connection, page: i64, page_size: i64) -> QueryResult<PaginationResult<Category>> {
        use crate::schema::categories::dsl::*;

        let page_size = if page_size < 1 { 1 } else { page_size };
        let total_items = categories.count().get_result(db)?;
        let items = categories.limit(page_size).offset(page * page_size).load::<Category>(db)?;

        Ok(PaginationResult {
            items,
            total_items,
            page,
            page_size,
            /* ceiling division of integers */
            num_pages: total_items / page_size + i64::from(total_items % page_size != 0)
        })
    }

    pub fn update(db: &mut Connection, param_id: i32, item: &CategoryForm) -> QueryResult<Category> {
        use crate::schema::categories::dsl::*;

        diesel::update(categories.filter(id.eq(param_id))).set(item).get_result(db)
    }

    pub fn delete(db: &mut Connection, param_id: i32) -> QueryResult<usize> {
        use crate::schema::categories::dsl::*;

        diesel::delete(categories.filter(id.eq(param_id))).execute(db)
    }
}
