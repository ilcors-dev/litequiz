use dsync::{GenerationConfig, TableOptions};
use std::path::PathBuf;

pub fn main() {
    let dir = env!("CARGO_MANIFEST_DIR");

    match dsync::generate_files(
        PathBuf::from_iter([dir, "src/schema.rs"]).as_path(),
        PathBuf::from_iter([dir, "src/models"]).as_path(),
        GenerationConfig {
            connection_type: "diesel::sqlite::SqliteConnection".to_string(),
            options: dsync::GenerationConfigOpts {
                default_table_options: TableOptions::default().tsync(),
                ..Default::default()
            },
        },
    ) {
        Ok(_) => println!("Generated files"),
        Err(e) => println!("Error: {:?}", e),
    }
}
