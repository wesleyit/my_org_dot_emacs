## Use the 8.0 version of Debian (stable)
FROM wesleyit/ws-debian-base:jessie

## Author
MAINTAINER Wesley Rodrigues da Silva <wesley.it@gmail.com>

## Run a complete upgrade
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN rm -rf /var/lib/apt/lists/*

## Variables are easy
ENV MYAPPCODE 123abc

## Docker can add and extract files
ADD myfile.tar  /data

## Allow ports
EXPOSE 80

## Create a volume
VOLUME /data

## Change the default location
WORKDIR /data

## Change the user from root to someone else
USER operator

## Copy is less powerful than add
COPY file.tmp file.tmp

## Default behavior is a shell
CMD /bin/bash -l
