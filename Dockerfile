FROM node:slim

VOLUME /src
WORKDIR /root

env NODE_ENV production
env NODE_SCRIPT start
env HOME /src
cmd /root/start.sh


ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh


RUN apt-get update -yqq
RUN apt-get upgrade -yqq
RUN apt-get install -yqq sudo
RUN npm install -g bower
