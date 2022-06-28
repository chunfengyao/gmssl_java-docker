FROM weiliy/gmssl as builder

MAINTAINER chunfengyao

RUN apt update

RUN apt install -y ca-certificates openjdk-11-jdk

RUN apt clean

RUN uname -m

ENV PUID=1000
ENV PGID=1000
ENV TZ="Asia/Shanghai"

ENTRYPOINT ["sleep","infinity"]
