FROM node:carbon-alpine
MAINTAINER Dan Chen <djc.me>

RUN apk add --no-cache bash g++ git make openssl-dev python vim && \
node --version && \
npm --version && \
python --version && \
npm install --global storjshare-daemon && \
npm cache clean && \
apk del git openssl-dev python vim && \
rm -rf /var/cache/apk/* && \
rm -rf /tmp/npm* && \
storjshare --version