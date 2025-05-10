# Use an official Node.js runtime as a base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application files
COPY . .


# Build the application (adjust if not using React)
RUN npm run build

# Expose a port for your application (if needed for development)
EXPOSE 3001

# Start the frontend application (use appropriate script if different)
CMD ["npm", "start"]