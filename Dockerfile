
#Sample Dockerfile for NodeJS Apps

# Using the official Node.js 14 image as base image
FROM node:14

# Setting the environment variable NODE_ENV to production
ENV NODE_ENV=production

# Setting the working directory to /app1folder 
WORKDIR /app1folder

# Copying package.json and package-lock.json files to the current working directory
# Typo fixed: Changed package-lock.json* to package-lock.json
COPY ["package.json", "package-lock.json", "./"]

# Installing dependencies only for production
RUN npm install --production

# Copying all files from the current directory to the working directory
COPY . .

# Exposing port 3000 for the Node.js application
# Changed 8080 to 3000, as it is a common port for Node.js applications
EXPOSE 3000

# Running the application by executing the server.js file with Node.js
CMD [ "node", "server.js" ]
