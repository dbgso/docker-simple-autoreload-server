FROM alpine:latest

RUN apk add --no-cache nodejs yarn
RUN yarn global add simple-autoreload-server

VOLUME [ "/data" ]
WORKDIR /data

ENTRYPOINT [ "autoreload-server" ]