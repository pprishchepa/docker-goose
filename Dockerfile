FROM golang:1.12-alpine as builder

RUN apk add --no-cache gcc libc-dev make git \
    && go get -u github.com/pressly/goose/cmd/goose

FROM alpine:latest
COPY --from=builder /go/bin/goose /bin/goose
