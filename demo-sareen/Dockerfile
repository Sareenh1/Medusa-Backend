FROM node:18.1.0

WORKDIR /app/medusa

COPY package.json .

RUN apt-get update

RUN npm install -g npm@latest

RUN npm install -g @medusajs/medusa-cli@latest

RUN npm install 

COPY . .

ENTRYPOINT ["./develop.sh", "develop"]
