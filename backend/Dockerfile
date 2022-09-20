# syntax=docker/dockerfile:1

FROM golang:latest as build


WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go get

COPY *.go ./

RUN go build -o main /app

FROM golang:latest
COPY --from=build /app ./

EXPOSE 8080

CMD ["./main"]