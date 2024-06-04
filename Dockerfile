# Use the official Node.js image as the base image
FROM node:14

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image
COPY app_code/package*.json ./

# Install dependencies
RUN npm install

# Copy application files to the container image
COPY ./app_code/ .

# Expose port 8080
EXPOSE 8080

# Run the web application
CMD [ "node", "app.js" ]
