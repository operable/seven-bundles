FROM ubuntu:14.04

RUN apt-get update -y && \
    apt-get install -y wget unzip && \
    wget http://iobin.suspended-chord.info/linux/iobin-linux-x64-deb-current.zip && \
    unzip iobin-linux-x64-deb-current.zip && \
    dpkg -i IoLanguage-*.deb && \
    rm -f IoLanguage-*.deb iobin-linux-x64-deb-current.zip && \
    apt-get remove -y wget unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY echo.io /root/echo.io
