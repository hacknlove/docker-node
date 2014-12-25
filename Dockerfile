FROM node:slim

VOLUME /src
WORKDIR /src

env NODE_ENV production

cmd npm start
