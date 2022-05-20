FROM node:slim

WORKDIR /app
COPY package.json /app
RUN yarn install -f

COPY . /app
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
