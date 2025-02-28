FROM node:latest

WORKDIR /project
VOLUME /project

RUN npm init -y &&
    npm i webpack webpack-cli webpack-dev-server typescript ts-loader --save-dev

RUN npm install

RUN npx webpack serve
