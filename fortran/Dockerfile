FROM alpine:3.4

COPY echo.f /root/echo.f

RUN apk -U add g++ gfortran libgfortran && \
    rm -f /var/cache/apk/* && \
    gfortran -o /root/echo /root/echo.f && \
    rm -f /root/echo.f
