FROM ubuntu:16.10

RUN apt-get update -y && \
    apt-get install -y wget default-jre-headless && \
    wget http://scala-lang.org/files/archive/scala-2.12.0.deb && \
    dpkg -i scala-2.12.0.deb && \
    apt-get update -y && \
    apt-get install -y scala && \
    rm -f scala-2.12.0.deb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY echo.sc /root/echo.sc
