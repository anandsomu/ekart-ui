# Use an official Node runtime as a base image
FROM node:lts-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

# Start the app
CMD ["npm", "start"]
