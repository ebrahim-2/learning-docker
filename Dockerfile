FROM node:11.15-alpine as builder

WORKDIR /usr/app

COPY ./build ./build

FROM nginx

COPY --from=builder /usr/app/build /usr/share/nginx/html

