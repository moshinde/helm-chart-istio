FROM node:14.4.0-alpine3.12
RUN apk add ca-certificates \
    && mkdir -p /home/node/server \
    && mkdir -p /home/node/cert \
    && wget -O /usr/local/bin/chamber https://github.com/segmentio/chamber/releases/download/v2.8.1/chamber-v2.8.1-linux-amd64 \
    && chmod 755 /usr/local/bin/chamber
WORKDIR /home/node/server
COPY . /home/node/server
RUN chmod -R 777 /home/node/server
EXPOSE 80   
ENTRYPOINT ["sh","entrypointServer.sh"]