FROM golang:1.7-alpine

ADD main.go /usr/src/amwhex/
WORKDIR /usr/src/amwhex

RUN go build
CMD /usr/src/amwhex/amwhex
