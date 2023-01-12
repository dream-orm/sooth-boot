FROM mysql:8.0.19

MAINTAINER moxa

ENV TZ=Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./soothboot.sql /docker-entrypoint-initdb.d

