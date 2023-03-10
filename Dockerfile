FROM alpine:3.17

ENV GOOSE_VER="v3.10.0"

RUN set -xe; \
    apk add --update --no-cache ca-certificates curl; \
    wget https://github.com/pressly/goose/releases/download/${GOOSE_VER}/goose_linux_x86_64 -O /bin/goose ; \
    chmod +x /bin/goose

ENTRYPOINT ["/bin/goose"]
