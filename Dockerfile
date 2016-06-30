FROM node:latest

RUN mkdir /opt/angular && \
    mkdir /opt/angular/app

COPY package.json /opt/angular
COPY systemjs.config.js /opt/angular
COPY tsconfig.json /opt/angular
COPY typings.json /opt/angular

WORKDIR /opt/angular

RUN npm install && \
    npm run typings install

COPY index.html /opt/angular
COPY styles.css /opt/angular

CMD ["npm","start"]
