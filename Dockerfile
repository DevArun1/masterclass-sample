# Use Node.js 16 or latest
FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first for dependency installation
COPY package*.json ./

# Install dependencies for npm
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port
EXPOSE 3000

# Start the app using nodemon for auto-reload
CMD ["npx", "nodemon", "app.js"]
