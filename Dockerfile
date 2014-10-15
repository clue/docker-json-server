FROM node:latest
MAINTAINER Christian Lück <christian@lueck.tv>

RUN npm install -g json-server

EXPOSE 80
ENTRYPOINT ["json-server", "-p", "80"]
CMD []
