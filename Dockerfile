FROM node:20-slim

WORKDIR /app

# Copy package*.json files
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy application code
COPY . .

EXPOSE 9000

CMD ["npx", "medusa", "start"]
