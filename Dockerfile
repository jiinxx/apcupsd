FROM node:alpine

RUN apk update && apk add --no-cache apcupsd

VOLUME [ "/etc/apcupsd", "/var/log/apcupsd" ]

WORKDIR /usr/src/app
COPY config.js /usr/src/app
COPY package.json /usr/src/app
COPY index.js /usr/src/app
COPY start.sh /usr/src/app
run npm install -g

CMD ["./start.sh"]
