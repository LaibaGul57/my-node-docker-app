# Base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# App runs on port 3000
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
