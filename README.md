docker-node
===========

mount your app in /src and go

##USE

    docker -d --restart=always -p ... --link ... -v /path/to/your/node-app:/src pykiss/node

## requisites

The image assumes that your application has a  `package.json` defining its start script.

You must install execute npm install first:

    docker -it --rm -v /path/to/your/node-app:/src pykiss/node npm install --production


