FROM node:12-alpine
LABEL maintainer="Ryan Albon <ryanalbon@gmail.com>"
EXPOSE 8080

WORKDIR /app
COPY ./package.json ./package-lock.json ./
RUN ["npm", "install", "--only=prod"]
COPY ./bin ./bin

ENTRYPOINT ["/usr/local/bin/node", "/app/bin/www"]
