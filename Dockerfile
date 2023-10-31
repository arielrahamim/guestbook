FROM golang:1.20.10-alpine3.17 AS builder
WORKDIR /app
COPY ./main.go .
COPY ./go.mod .
COPY ./go.sum .

ENV GOPROXY=https://goproxy.io
ENV CGO_ENABLED=0
ENV GO111MODULE=on
RUN go mod download
RUN go build -o main .

# making new clean image
FROM scratch
WORKDIR /app
COPY --from=builder /app/main /app/main

COPY ./public/index.html public/index.html
COPY ./public/script.js public/script.js
COPY ./public/style.css public/style.css
CMD [ "/app/main" ]
EXPOSE 3000
