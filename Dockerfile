FROM node:20.18 as base

RUN apt install imagemagick

WORKDIR /app

COPY package*.json .

RUN npm install

FROM base as dev

COPY . .

FROM dev as build

RUN npm run build

FROM base as prod

COPY --from=build /app/dist /app