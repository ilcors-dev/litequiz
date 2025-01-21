/* @generated and managed by dsync */

#[allow(unused)]
use crate::diesel::*;
use crate::models::categories::Categories;
use crate::schema::*;

pub type ConnectionType = diesel::sqlite::SqliteConnection;

/// Struct representing a row in table `category_score_settings`
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::Queryable, diesel::Selectable, diesel::QueryableByName, diesel::Associations, diesel::Identifiable)]
#[diesel(table_name=category_score_settings, primary_key(id), belongs_to(Categories, foreign_key=category_id))]
pub struct CategoryScoreSettings {
    /// Field representing column `id`
    pub id: i32,
    /// Field representing column `answer_type`
    pub answer_type: String,
    /// Field representing column `score`
    pub score: f64,
    /// Field representing column `category_id`
    pub category_id: i32,
    /// Field representing column `created_at`
    pub created_at: chrono::NaiveDateTime,
    /// Field representing column `updated_at`
    pub updated_at: chrono::NaiveDateTime,
}

/// Create Struct for a row in table `category_score_settings` for [`CategoryScoreSettings`]
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::Insertable)]
#[diesel(table_name=category_score_settings)]
pub struct CreateCategoryScoreSettings {
    /// Field representing column `id`
    pub id: i32,
    /// Field representing column `answer_type`
    pub answer_type: String,
    /// Field representing column `score`
    pub score: f64,
    /// Field representing column `category_id`
    pub category_id: i32,
    /// Field representing column `created_at`
    pub created_at: chrono::NaiveDateTime,
    /// Field representing column `updated_at`
    pub updated_at: chrono::NaiveDateTime,
}

/// Update Struct for a row in table `category_score_settings` for [`CategoryScoreSettings`]
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::AsChangeset, PartialEq, Default)]
#[diesel(table_name=category_score_settings)]
pub struct UpdateCategoryScoreSettings {
    /// Field representing column `answer_type`
    pub answer_type: Option<String>,
    /// Field representing column `score`
    pub score: Option<f64>,
    /// Field representing column `category_id`
    pub category_id: Option<i32>,
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

impl CategoryScoreSettings {
    /// Insert a new row into `category_score_settings` with a given [`CreateCategoryScoreSettings`]
    pub fn create(db: &mut ConnectionType, item: &CreateCategoryScoreSettings) -> diesel::QueryResult<Self> {
        use crate::schema::category_score_settings::dsl::*;

        diesel::insert_into(category_score_settings).values(item).get_result::<Self>(db)
    }

    /// Get a row from `category_score_settings`, identified by the primary key
    pub fn read(db: &mut ConnectionType, param_id: i32) -> diesel::QueryResult<Self> {
        use crate::schema::category_score_settings::dsl::*;

        category_score_settings.filter(id.eq(param_id)).first::<Self>(db)
    }

    /// Update a row in `category_score_settings`, identified by the primary key with [`UpdateCategoryScoreSettings`]
    pub fn update(db: &mut ConnectionType, param_id: i32, item: &UpdateCategoryScoreSettings) -> diesel::QueryResult<Self> {
        use crate::schema::category_score_settings::dsl::*;

        diesel::update(category_score_settings.filter(id.eq(param_id))).set(item).get_result(db)
    }

    /// Delete a row in `category_score_settings`, identified by the primary key
    pub fn delete(db: &mut ConnectionType, param_id: i32) -> diesel::QueryResult<usize> {
        use crate::schema::category_score_settings::dsl::*;

        diesel::delete(category_score_settings.filter(id.eq(param_id))).execute(db)
    }
}
