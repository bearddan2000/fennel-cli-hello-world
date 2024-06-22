FROM alpine:3.18.2

ENV FENNEL_VERSION 1.3.1

RUN apk update && \
    apk add wget && \
    mkdir -p /opt/fennel && \
    cd /opt/fennel && \
    wget https://fennel-lang.org/downloads/fennel-$FENNEL_VERSION-x86_64 -O fennel && \
    chmod +x fennel && \
    mv fennel /usr/local/bin

WORKDIR /code

COPY bin .

CMD "./run.sh"