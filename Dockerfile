FROM node:14-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY ./nodejs-tutorialspoint-test/package.json /usr/src/app/

RUN npm install

COPY ./nodejs-tutorialspoint-test/. /usr/src/app

EXPOSE 8080

CMD ["npm","start"]