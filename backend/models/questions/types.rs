use crate::diesel::*;
use serde::{Deserialize, Serialize};

#[tsync::tsync]
#[derive(Queryable, Serialize, Clone)]
pub struct WithHiddenAnswer {
    pub id: i32,
    pub question: String,
    pub verified: bool,
}

#[tsync::tsync]
#[derive(Queryable, Deserialize, Serialize)]
pub struct WithAnswer {
    pub id: i32,
    pub question: String,
    pub answer: bool,
}
