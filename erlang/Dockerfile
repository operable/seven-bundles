FROM alpine:3.4

RUN apk -U add bash erlang && \
    rm -f /var/cache/apk/*

COPY echo.erl echo.sh /root/
