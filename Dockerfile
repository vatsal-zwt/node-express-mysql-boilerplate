FROM node:14-alpine

WORKDIR /var/www

COPY package*.json ./

RUN npm install
RUN npm ci --only=production

EXPOSE 5000

CMD [ "node", "src/index.js" ]
