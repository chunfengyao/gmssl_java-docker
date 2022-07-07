FROM weiliy/gmssl as builder

MAINTAINER chunfengyao

RUN mkdir -p /usr/share/man/man1/

RUN apt update

RUN apt install -y ca-certificates openjdk-11-jdk unzip gcc make

RUN apt clean

ADD libgmssljni.so /usr/lib/x86_64-linux-gnu/jni/

RUN uname -m

ENV PUID=1000
ENV PGID=1000
ENV TZ="Asia/Shanghai"
