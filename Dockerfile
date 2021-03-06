FROM golang:1.15

WORKDIR /app

COPY . .

RUN go build .

EXPOSE 8080

CMD ["./hello-golang"]
