FROM golang:1.14.4-alpine3.12 as builder

WORKDIR /tmp

RUN apk update && \
    apk add git

RUN git clone https://github.com/hashicorp/demo-consul-101.git && \
    cd demo-consul-101/services/counting-service && \
    go mod init main && \
    go build .

FROM alpine:3.12.0

COPY --from=builder /tmp/demo-consul-101/services/counting-service/main /usr/bin/counting-service

EXPOSE 80

CMD [ "/usr/bin/counting-service" ]
