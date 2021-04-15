FROM node:15.14.0-alpine3.10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN rm -rf /usr/local/share/.cache/
EXPOSE 3000
CMD ["node", "./src/index.js"]
