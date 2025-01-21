/* @generated and managed by dsync */

#[allow(unused)]
use crate::diesel::*;
use crate::schema::*;

pub type ConnectionType = diesel::sqlite::SqliteConnection;

/// Struct representing a row in table `categories`
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::Queryable, diesel::Selectable, diesel::QueryableByName, diesel::Identifiable)]
#[diesel(table_name=categories, primary_key(id))]
pub struct Categories {
    /// Field representing column `id`
    pub id: i32,
    /// Field representing column `name`
    pub name: String,
    /// Field representing column `questions_per_quiz`
    pub questions_per_quiz: i32,
    /// Field representing column `created_at`
    pub created_at: chrono::NaiveDateTime,
    /// Field representing column `updated_at`
    pub updated_at: chrono::NaiveDateTime,
}

/// Create Struct for a row in table `categories` for [`Categories`]
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::Insertable)]
#[diesel(table_name=categories)]
pub struct CreateCategories {
    /// Field representing column `id`
    pub id: i32,
    /// Field representing column `name`
    pub name: String,
    /// Field representing column `questions_per_quiz`
    pub questions_per_quiz: i32,
    /// Field representing column `created_at`
    pub created_at: chrono::NaiveDateTime,
    /// Field representing column `updated_at`
    pub updated_at: chrono::NaiveDateTime,
}

/// Update Struct for a row in table `categories` for [`Categories`]
#[tsync::tsync]
#[derive(Debug, Clone, serde::Serialize, serde::Deserialize, diesel::AsChangeset, PartialEq, Default)]
#[diesel(table_name=categories)]
pub struct UpdateCategories {
    /// Field representing column `name`
    pub name: Option<String>,
    /// Field representing column `questions_per_quiz`
    pub questions_per_quiz: Option<i32>,
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

impl Categories {
    /// Insert a new row into `categories` with a given [`CreateCategories`]
    pub fn create(db: &mut ConnectionType, item: &CreateCategories) -> diesel::QueryResult<Self> {
        use crate::schema::categories::dsl::*;

        diesel::insert_into(categories).values(item).get_result::<Self>(db)
    }

    /// Get a row from `categories`, identified by the primary key
    pub fn read(db: &mut ConnectionType, param_id: i32) -> diesel::QueryResult<Self> {
        use crate::schema::categories::dsl::*;

        categories.filter(id.eq(param_id)).first::<Self>(db)
    }

    /// Update a row in `categories`, identified by the primary key with [`UpdateCategories`]
    pub fn update(db: &mut ConnectionType, param_id: i32, item: &UpdateCategories) -> diesel::QueryResult<Self> {
        use crate::schema::categories::dsl::*;

        diesel::update(categories.filter(id.eq(param_id))).set(item).get_result(db)
    }

    /// Delete a row in `categories`, identified by the primary key
    pub fn delete(db: &mut ConnectionType, param_id: i32) -> diesel::QueryResult<usize> {
        use crate::schema::categories::dsl::*;

        diesel::delete(categories.filter(id.eq(param_id))).execute(db)
    }
}
