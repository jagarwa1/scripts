FROM golang:1.25 AS builder

WORKDIR /app
COPY rb-scrobbler .

RUN make get
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 make build

FROM alpine:latest

COPY --from=builder /app/build/rb-scrobbler /rb-scrobbler

ENTRYPOINT [ "/rb-scrobbler" ]
CMD [ "--help" ]
