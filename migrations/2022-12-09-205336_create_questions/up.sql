CREATE TABLE questions (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    question TEXT NOT NULL,
    answer BOOLEAN NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
