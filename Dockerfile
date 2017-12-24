FROM ubuntu:16.04

MAINTAINER sunil <sunhick@gmail.com>

RUN apt-get update
RUN apt-get install -y emacs
RUN apt-get install -y gcc

RUN mkdir -p /home/me

COPY wait.sh /home/me

CMD ["/home/me/wait.sh"]
