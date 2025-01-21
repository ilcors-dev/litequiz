use diesel::Queryable;
use serde::{Deserialize, Serialize};

#[tsync::tsync]
#[derive(Queryable, Serialize, Clone)]
pub struct MultipleChoice {
    pub id: i32,
    pub text: String,
}

#[tsync::tsync]
#[derive(Queryable, Serialize, Clone)]
pub struct WithHiddenAnswer {
    pub id: i32,
    pub question: String,
    pub verified: bool,
    pub is_multiple_choice: bool,
    pub choices: Vec<MultipleChoice>,
}

#[tsync::tsync]
#[derive(Queryable, Serialize, Clone)]
pub struct PartialQuestion {
    pub id: i32,
    pub question: String,
    pub verified: bool,
    pub is_multiple_choice: bool,
}

#[tsync::tsync]
#[derive(Queryable, Deserialize, Serialize)]
pub struct WithAnswer {
    pub id: i32,
    pub question: String,
    pub answer: bool,
}
