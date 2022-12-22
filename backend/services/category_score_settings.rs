use crate::models::category_score_settings::{CategoryScoreSetting, CategoryScoreSettingForm};
use actix_web::web::{Data, Json, Path};
use actix_web::{get, post, HttpResponse};
use create_rust_app::Database;
use diesel::{ExpressionMethods, QueryDsl, RunQueryDsl};

const ALLOWED_ANSWERS: [&'static str; 3] = ["correct", "wrong", "empty"];

#[get("/{id}")]
async fn show(db: Data<Database>, category_score_settings_id: Path<i32>) -> HttpResponse {
    use crate::schema::category_score_settings::dsl::*;
    let mut con = db.get_connection();

    let cat = category_score_settings
        .filter(category_id.eq(category_score_settings_id.into_inner()))
        .load::<CategoryScoreSetting>(&mut con);

    if cat.is_err() {
        let no_result: Vec<CategoryScoreSetting> = Vec::new();

        return HttpResponse::Ok().json(no_result);
    }

    return HttpResponse::Ok().json(cat.unwrap());
}

#[post("/{id}")]
async fn store(db: Data<Database>, form: Json<Vec<CategoryScoreSettingForm>>) -> HttpResponse {
    use crate::schema::category_score_settings::dsl::*;
    let mut con = db.get_connection();

    for item in form.iter() {
        if ALLOWED_ANSWERS.contains(&item.answer_type.as_str()) == false {
            return HttpResponse::BadRequest().finish();
        }
    }

    let result = diesel::delete(
        category_score_settings.filter(category_id.eq(form.first().unwrap().category_id)),
    )
    .execute(&mut con);

    if result.is_err() {
        return HttpResponse::InternalServerError().finish();
    }

    for item in form.iter() {
        let result = CategoryScoreSetting::create(&mut con, &item);

        if result.is_err() {
            return HttpResponse::InternalServerError().finish();
        }
    }

    return HttpResponse::Ok().finish();
}

pub fn endpoints(scope: actix_web::Scope) -> actix_web::Scope {
    return scope.service(show).service(store);
}
