// @generated automatically by Diesel CLI.

diesel::table! {
    categories (id) {
        id -> Integer,
        name -> Text,
        questions_per_quiz -> Integer,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::table! {
    category_score_settings (id) {
        id -> Integer,
        answer_type -> Text,
        score -> Double,
        category_id -> Integer,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::table! {
    questions (id) {
        id -> Integer,
        question -> Text,
        answer -> Nullable<Bool>,
        category_id -> Integer,
        verified -> Bool,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::joinable!(category_score_settings -> categories (category_id));
diesel::joinable!(questions -> categories (category_id));

diesel::allow_tables_to_appear_in_same_query!(
    categories,
    category_score_settings,
    questions,
);
