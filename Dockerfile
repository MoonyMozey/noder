FROM node:alpine

WORKDIR /app

COPY package-lock.json .

COPY package.json .

RUN npm install

COPY . .

EXPOSE 4000

CMD ["node", "index.js"]


