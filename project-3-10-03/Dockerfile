# Dockerfile for project-3
FROM golang:1.18-alpine
WORKDIR /app
COPY . /app
RUN go build -o main .
CMD ["./main"]