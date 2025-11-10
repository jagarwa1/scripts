FROM golang:1.25

WORKDIR /app
COPY rb-scrobbler .

RUN go mod download
RUN make

CMD [ "/app/build/rb-scrobbler"  ]
