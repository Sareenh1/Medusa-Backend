
FROM node:18-alpine

ENV NODE_ENV=production
ENV MEDUSA_BACKEND_URL=http://localhost:9000

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port Medusa will run on
EXPOSE 9000

# Command to run Medusa
CMD ["npm", "run", "start"]
