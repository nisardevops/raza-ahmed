FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get install nodejs npm -y

COPY . .

RUN npm install 

EXPOSE 3000

CMD ["node", "app.js"]