FROM node:11.10.0

LABEL maintainer David Miotti <david@muxumuxu.com>

ENV APP_PATH='/app'

RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH

COPY package.json $APP_PATH
COPY yarn.lock $APP_PATH
RUN yarn install

COPY . $APP_PATH

RUN yarn run build

ENV HOST 0.0.0.0
EXPOSE 3000

CMD [ "yarn", "start" ]
