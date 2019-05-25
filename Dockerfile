FROM node:11.15-alpine

WORKDIR /usr/app

COPY ./package.json .
RUN yarn install

COPY . .

RUN yarn run build

CMD [ "yarn", "run", "prod" ]
