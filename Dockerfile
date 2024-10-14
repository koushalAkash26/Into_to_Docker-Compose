FROM node:20.18
WORKDIR /app
COPY . .
RUN apt install imagemagick
RUN npm install
