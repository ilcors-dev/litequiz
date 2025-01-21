CREATE TABLE questions (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    question TEXT NOT NULL,
    answer BOOLEAN,
    category_id INTEGER NOT NULL,
    is_multiple_choice BOOLEAN NOT NULL DEFAULT 0,
    -- is the question verified? it means that the question comes from a trusted source, useful when the question
    -- inserted have been created by non-trusted sources and its answer is not therefore fully trusted
    verified BOOLEAN NOT NULL DEFAULT 1,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (category_id) REFERENCES categories(id)
);
