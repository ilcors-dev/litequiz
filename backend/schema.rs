// @generated automatically by Diesel CLI.

diesel::table! {
    categories (id) {
        id -> Integer,
        name -> Text,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::table! {
    questions (id) {
        id -> Integer,
        question -> Text,
        answer -> Bool,
        category_id -> Integer,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::table! {
    todos (id) {
        id -> Integer,
        text -> Text,
        created_at -> Timestamp,
    }
}

diesel::joinable!(questions -> categories (category_id));

diesel::allow_tables_to_appear_in_same_query!(
    categories,
    questions,
    todos,
);
