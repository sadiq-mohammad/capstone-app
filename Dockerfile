# Use Node.js base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy backend files
COPY Backend/ ./Backend/

# Copy frontend static files into backend's public directory
COPY Frontend/public/ ./Backend/public/

# Copy root package files if needed
COPY package*.json ./

# Install dependencies
WORKDIR /usr/src/app/Backend
RUN npm install

# Expose backend port
EXPOSE 8080

# Start the server
CMD ["node", "app.js"]
