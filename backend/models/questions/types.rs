use crate::diesel::*;
use serde::{Deserialize, Serialize};

#[tsync::tsync]
#[derive(Queryable, Serialize)]
pub struct WithHiddenAnswer {
    pub id: i32,
    pub question: String,
}

#[tsync::tsync]
#[derive(Queryable, Deserialize, Serialize)]
pub struct WithAnswer {
    pub id: i32,
    pub question: String,
    pub answer: bool,
}
