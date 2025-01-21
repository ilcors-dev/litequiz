/* @generated and managed by dsync */

#[allow(unused)]
use crate::diesel::*;
use crate::models::questions::Questions;
use crate::schema::*;

pub type ConnectionType = diesel::sqlite::SqliteConnection;

/// Struct representing a row in table `answers`
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::Queryable, diesel::Selectable, diesel::QueryableByName, diesel::Associations, diesel::Identifiable)]
#[diesel(table_name=answers, primary_key(id), belongs_to(Questions, foreign_key=question_id))]
pub struct Answers {
    /// Field representing column `id`
    pub id: i32,
    /// Field representing column `question_id`
    pub question_id: i32,
    /// Field representing column `text`
    pub text: String,
    /// Field representing column `is_correct`
    pub is_correct: bool,
    /// Field representing column `created_at`
    pub created_at: chrono::NaiveDateTime,
    /// Field representing column `updated_at`
    pub updated_at: chrono::NaiveDateTime,
}

/// Create Struct for a row in table `answers` for [`Answers`]
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::Insertable)]
#[diesel(table_name=answers)]
pub struct CreateAnswers {
    /// Field representing column `id`
    pub id: i32,
    /// Field representing column `question_id`
    pub question_id: i32,
    /// Field representing column `text`
    pub text: String,
    /// Field representing column `is_correct`
    pub is_correct: bool,
    /// Field representing column `created_at`
    pub created_at: chrono::NaiveDateTime,
    /// Field representing column `updated_at`
    pub updated_at: chrono::NaiveDateTime,
}

/// Update Struct for a row in table `answers` for [`Answers`]
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::AsChangeset, PartialEq, Default)]
#[diesel(table_name=answers)]
pub struct UpdateAnswers {
    /// Field representing column `question_id`
    pub question_id: Option<i32>,
    /// Field representing column `text`
    pub text: Option<String>,
    /// Field representing column `is_correct`
    pub is_correct: Option<bool>,
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

impl Answers {
    /// Insert a new row into `answers` with a given [`CreateAnswers`]
    pub fn create(db: &mut ConnectionType, item: &CreateAnswers) -> diesel::QueryResult<Self> {
        use crate::schema::answers::dsl::*;

        diesel::insert_into(answers).values(item).get_result::<Self>(db)
    }

    /// Get a row from `answers`, identified by the primary key
    pub fn read(db: &mut ConnectionType, param_id: i32) -> diesel::QueryResult<Self> {
        use crate::schema::answers::dsl::*;

        answers.filter(id.eq(param_id)).first::<Self>(db)
    }

    /// Update a row in `answers`, identified by the primary key with [`UpdateAnswers`]
    pub fn update(db: &mut ConnectionType, param_id: i32, item: &UpdateAnswers) -> diesel::QueryResult<Self> {
        use crate::schema::answers::dsl::*;

        diesel::update(answers.filter(id.eq(param_id))).set(item).get_result(db)
    }

    /// Delete a row in `answers`, identified by the primary key
    pub fn delete(db: &mut ConnectionType, param_id: i32) -> diesel::QueryResult<usize> {
        use crate::schema::answers::dsl::*;

        diesel::delete(answers.filter(id.eq(param_id))).execute(db)
    }
}
