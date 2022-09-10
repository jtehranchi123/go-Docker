FROM golang:1.12-alpine3.9
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN apk update && apk add gcc make git libc-dev binutils-gold
RUN go build -o main .
CMD ["/app/main"]