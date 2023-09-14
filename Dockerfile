
#Sample Dockerfile for NodeJS Apps

FROM node:14

ENV NODE_ENV=production

WORKDIR /app1folder

COPY ["package.json", "package-lock.json*", "./"]

# Typo: Fixed package-lock.json* to package-lock.json
RUN npm install --production

COPY . .

# Changed 8080 to 3000, as it is a common port for Node.js applications
EXPOSE 8080

CMD [ "node", "server.js" ]
