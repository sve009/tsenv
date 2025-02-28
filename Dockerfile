FROM debian:latest

WORKDIR /project

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm

RUN npm install

VOLUME /project

CMD npm i webpack \
           webpack-cli webpack-dev-server \
           typescript ts-loader \
           --save-dev && \
    npx webpack serve
