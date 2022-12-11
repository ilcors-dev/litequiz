use crate::diesel::*;
use serde::Serialize;

#[tsync::tsync]
#[derive(Queryable, Serialize)]
pub struct WithHiddenAnswer {
    pub id: i32,
    pub question: String,
}
