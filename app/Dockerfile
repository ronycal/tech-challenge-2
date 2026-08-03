# Use the official Node.js runtime as the base image
FROM node:22-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the application port
EXPOSE 3001

# Start the application
CMD ["npm", "start"]