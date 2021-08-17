FROM node:14-slim

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install --production

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "server.js" ]