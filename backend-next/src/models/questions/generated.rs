/* @generated and managed by dsync */

#[allow(unused)]
use crate::diesel::*;
use crate::models::categories::Categories;
use crate::schema::*;

pub type ConnectionType = diesel::sqlite::SqliteConnection;

/// Struct representing a row in table `questions`
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::Queryable, diesel::Selectable, diesel::QueryableByName, diesel::Associations, diesel::Identifiable)]
#[diesel(table_name=questions, primary_key(id), belongs_to(Categories, foreign_key=category_id))]
pub struct Questions {
    /// Field representing column `id`
    pub id: i32,
    /// Field representing column `question`
    pub question: String,
    /// Field representing column `answer`
    pub answer: Option<bool>,
    /// Field representing column `category_id`
    pub category_id: i32,
    /// Field representing column `is_multiple_choice`
    pub is_multiple_choice: bool,
    /// Field representing column `verified`
    pub verified: bool,
    /// Field representing column `created_at`
    pub created_at: chrono::NaiveDateTime,
    /// Field representing column `updated_at`
    pub updated_at: chrono::NaiveDateTime,
}

/// Create Struct for a row in table `questions` for [`Questions`]
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::Insertable)]
#[diesel(table_name=questions)]
pub struct CreateQuestions {
    /// Field representing column `id`
    pub id: i32,
    /// Field representing column `question`
    pub question: String,
    /// Field representing column `answer`
    pub answer: Option<bool>,
    /// Field representing column `category_id`
    pub category_id: i32,
    /// Field representing column `is_multiple_choice`
    pub is_multiple_choice: bool,
    /// Field representing column `verified`
    pub verified: bool,
    /// Field representing column `created_at`
    pub created_at: chrono::NaiveDateTime,
    /// Field representing column `updated_at`
    pub updated_at: chrono::NaiveDateTime,
}

/// Update Struct for a row in table `questions` for [`Questions`]
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::AsChangeset, PartialEq, Default)]
#[diesel(table_name=questions)]
pub struct UpdateQuestions {
    /// Field representing column `question`
    pub question: Option<String>,
    /// Field representing column `answer`
    pub answer: Option<Option<bool>>,
    /// Field representing column `category_id`
    pub category_id: Option<i32>,
    /// Field representing column `is_multiple_choice`
    pub is_multiple_choice: Option<bool>,
    /// Field representing column `verified`
    pub verified: Option<bool>,
    /// Field representing column `created_at`
    pub created_at: Option<chrono::NaiveDateTime>,
    /// Field representing column `updated_at`
    pub updated_at: Option<chrono::NaiveDateTime>,
}

/// Result of a `.paginate` function
#[tsync::tsync]
#[derive(Debug, serde::Serialize)]
pub struct PaginationResult<T> {
    /// Resulting items that are from the current page
    pub items: Vec<T>,
    /// The count of total items there are
    pub total_items: i64,
    /// Current page, 0-based index
    pub page: i64,
    /// Size of a page
    pub page_size: i64,
    /// Number of total possible pages, given the `page_size` and `total_items`
    pub num_pages: i64,
}

impl Questions {
    /// Insert a new row into `questions` with a given [`CreateQuestions`]
    pub fn create(db: &mut ConnectionType, item: &CreateQuestions) -> diesel::QueryResult<Self> {
        use crate::schema::questions::dsl::*;

        diesel::insert_into(questions).values(item).get_result::<Self>(db)
    }

    /// Get a row from `questions`, identified by the primary key
    pub fn read(db: &mut ConnectionType, param_id: i32) -> diesel::QueryResult<Self> {
        use crate::schema::questions::dsl::*;

        questions.filter(id.eq(param_id)).first::<Self>(db)
    }

    /// Update a row in `questions`, identified by the primary key with [`UpdateQuestions`]
    pub fn update(db: &mut ConnectionType, param_id: i32, item: &UpdateQuestions) -> diesel::QueryResult<Self> {
        use crate::schema::questions::dsl::*;

        diesel::update(questions.filter(id.eq(param_id))).set(item).get_result(db)
    }

    /// Delete a row in `questions`, identified by the primary key
    pub fn delete(db: &mut ConnectionType, param_id: i32) -> diesel::QueryResult<usize> {
        use crate::schema::questions::dsl::*;

        diesel::delete(questions.filter(id.eq(param_id))).execute(db)
    }
}
