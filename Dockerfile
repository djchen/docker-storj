FROM node:carbon-alpine
MAINTAINER Dan Chen <djc.me>

RUN apk update && \
    apk add g++ git make openssl-dev python && \
    npm install -g storjshare-daemon && \
    rm -rf /var/cache/apk/*

COPY versions /
