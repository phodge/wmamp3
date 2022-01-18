FROM ubuntu:18.04

RUN apt update

RUN apt install -y python3 python3-click
RUN apt install -y python3-taglib
RUN apt install -y mplayer
RUN apt install -y lame

COPY bin/wmamp3 /usr/bin/

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

CMD /bin/bash
