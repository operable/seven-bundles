FROM ubuntu:14.04

RUN apt-get update -y && \
    apt-get install -y default-jre wget unzip && \
    wget http://repo1.maven.org/maven2/org/clojure/clojure/1.8.0/clojure-1.8.0.zip && \
    unzip clojure-1.8.0.zip && \
    mv clojure-1.8.0/clojure-1.8.0.jar /root/clojure.jar && \
    rm -f clojure-1.8.0.zip && \
    apt-get remove -y wget unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY echo.clj echo.sh /root/
