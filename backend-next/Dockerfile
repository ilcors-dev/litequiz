FROM rust:1.84 as builder

WORKDIR /app

RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    sqlite3 \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Install Diesel CLI with SQLite support
RUN cargo install diesel_cli --no-default-features --features sqlite

# Copy application source code
COPY . .

# initialize Diesel (create the database and apply migrations)
RUN diesel migration run --migration-dir database/migrations

# ensure database seeding runs from the correct directory
WORKDIR /app/database/seeders
RUN sqlite3 ../db.sqlite < seed.sql

# return to /app for building the binary
WORKDIR /app

RUN cargo build --release

# use a minimal runtime image
FROM debian:bookworm-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    ca-certificates \
    libsqlite3-0 \
    sqlite3 \
    && rm -rf /var/lib/apt/lists/*

# copy the built binary
COPY --from=builder /app/target/release/backend-next /app/backend-next

# copy the pre-migrated and pre-seeded database
COPY --from=builder /app/database/db.sqlite /app/database/db.sqlite

COPY --from=builder /app/.env /app/.env

EXPOSE 4000

# run the application
CMD ["sh", "-c", "export $(grep -v '^#' .env | xargs) && /app/backend-next"]
