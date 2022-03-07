FROM node:17.6.0

WORKDIR /usr/src/app

RUN chown node:node /usr/src/app

COPY package.json package-lock.json ./

RUN npm install && npm clean cache --force

COPY . ./

USER node

CMD ["npm", "run", "start"]