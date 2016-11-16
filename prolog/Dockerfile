FROM ubuntu:14.04

RUN apt-get update -y && \
    apt-get install -y software-properties-common && \
    apt-add-repository ppa:swi-prolog/stable && \
    apt-get update -y && \
    apt-get install -y swi-prolog && \
    apt-get remove -y software-properties-common && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY echo.pl /root/echo.pl
