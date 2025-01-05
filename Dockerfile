FROM node:16.20.2-slim

WORKDIR /app
COPY Frontend/package.json frontend/yarn.lock ./
RUN yarn install

COPY Frontend .
RUN yarn build

EXPOSE 3000

CMD [ "yarn", "start" ]