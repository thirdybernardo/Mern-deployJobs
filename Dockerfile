# Step 1: Build React App
FROM node:alpine3.18 as build
WORKDIR /app 
COPY package.json .
RUN npm install
COPY . .
EXPOSE 4000
CMD [ "npm", "run", "client"]