FROM golang:1.14 as oven

ADD main.go /usr/src/amecho/
WORKDIR /usr/src/amecho

RUN go build

FROM ubuntu:18.04
COPY --from=oven /usr/src/amecho/amecho /amecho
COPY --from=oven /usr/src/amecho/main.go /
WORKDIR /
ENTRYPOINT [ "/amecho" ]