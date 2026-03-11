# Dockerfile for project-3
FROM golang:1.18-alpine
WORKDIR /app
COPY go.mod /app
COPY go.sum /app
COPY . /app
RUN go build -o main .
CMD ["./main"]