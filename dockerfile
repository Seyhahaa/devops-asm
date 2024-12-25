FROM node:16.20.2-alpine

ARG ENV_FILE
WORKDIR /app
COPY backend/package.json backend/yarn.lock ./
RUN yarn install

COPY backend .
RUN cp $ENV_FILE .env
RUN yarn build

EXPOSE 3000

CMD [ "yarn", "start:prod" ]