
FROM node:18-alpine

ENV NODE_ENV=production
ENV MEDUSA_BACKEND_URL=http://localhost:9000

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 9000

CMD ["npm", "run", "start"]
