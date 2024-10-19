# Use smaller Node.js image
FROM node:20-slim

# Set working directory
WORKDIR /app

# Copy package*.json files
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy application code
COPY . .

# Expose port
EXPOSE 9000

# Run command
CMD ["npx", "medusa", "start"]
