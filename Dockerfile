FROM node:14-alpine

RUN mkdir -p /home/ubuntu/Bootcamp-app

WORKDIR /home/ubuntu/Bootcamp-app

COPY package*.json /home/ubuntu/Bootcamp-app/

RUN npm install
RUN npm install @hapi/hapi@19 @hapi/bell@12 @hapi/boom@9 @hapi/cookie@11 @hapi/inert@6 @hapi/joi@17 @hapi/vision@6 dotenv@8 ejs@3 postgres@1
RUN npm install --save-dev nodemon@2

COPY . .

EXPOSE 8080

RUN npm run initdb

ENTRYPOINT npm run dev
