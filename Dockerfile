FROM node:latest
MAINTAINER Christian Lück <christian@lueck.tv>

RUN npm install -g json-server

WORKDIR /data
VOLUME /data
ENV PORT 8000

# Expose ports
EXPOSE ${PORT}
ADD run.sh /run.sh

# adding tini bcz json server doesn't do error handling.
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

ENTRYPOINT ["/tini", "-g", "--", "bash", "/run.sh"]
CMD []