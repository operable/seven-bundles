FROM ubuntu:14.04

RUN apt-get update -y && \
    apt-get install -y ghc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY echo.hs /root/echo.hs
