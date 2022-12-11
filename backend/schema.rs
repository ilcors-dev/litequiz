// @generated automatically by Diesel CLI.

diesel::table! {
    questions (id) {
        id -> Integer,
        question -> Text,
        answer -> Bool,
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

diesel::allow_tables_to_appear_in_same_query!(
    questions,
    todos,
);
