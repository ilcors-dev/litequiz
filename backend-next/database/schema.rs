// @generated automatically by Diesel CLI.

diesel::table! {
    answers (id) {
        id -> Integer,
        question_id -> Integer,
        text -> Text,
        is_correct -> Bool,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

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
        is_multiple_choice -> Bool,
        verified -> Bool,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::joinable!(answers -> questions (question_id));
diesel::joinable!(category_score_settings -> categories (category_id));
diesel::joinable!(questions -> categories (category_id));

diesel::allow_tables_to_appear_in_same_query!(
    answers,
    categories,
    category_score_settings,
    questions,
);
