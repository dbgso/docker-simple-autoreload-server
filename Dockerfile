FROM alpine:latest

RUN apk add --no-cache nodejs yarn && \
    yarn global add simple-autoreload-server && \
    yarn cache clean

VOLUME [ "/data" ]
WORKDIR /data

ENTRYPOINT [ "autoreload-server" ]