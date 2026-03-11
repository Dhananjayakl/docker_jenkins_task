# Dockerfile for project-5
FROM rust:1.65-slim
WORKDIR /app
COPY . /app
RUN cargo build --release
CMD ["./target/release/app"]