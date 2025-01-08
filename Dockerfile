# Build stage
FROM rust:latest AS builder

# Set working directory
WORKDIR /app

# Copy backend and frontend code to container
COPY . .

RUN rm -rf frontend/

RUN cargo build --release

# Final stage: minimal image for running the app
FROM debian:bookworm-slim

# Install required runtime dependencies
RUN apt-get update && apt-get install -y \
    libssl3 \
    libsqlite3-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Set environment variables for production
ENV NODE_ENV=production \
    RUST_BACKTRACE=1 \
    APP_PORT=3000

# Set working directory
WORKDIR /app

# Copy built backend and frontend to final image
COPY --from=builder /app/.cargo/.build/release/litequiz /app/backend

# Expose application port
EXPOSE 3000

# Command to run the backend
CMD ["./backend"]

