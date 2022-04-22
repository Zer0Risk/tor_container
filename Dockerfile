FROM alpine:latest
RUN apk update && apk add \
    tor \
    --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    && rm -rf /var/cache/apk/*
EXPOSE 9001
COPY torrc /etc/tor/torrc
RUN chown -R tor /etc/tor
USER tor
ENTRYPOINT [ "tor" ]
