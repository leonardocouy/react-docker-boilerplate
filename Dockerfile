FROM mhart/alpine-node
LABEL name="Leonardo Flores <contato@leonardocouy.com>"

ENV APP_PATH /usr/src/app

RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH

COPY package.json yarn.lock $APP_PATH/

# ADD ./package.json $APP_PATH/yarn.lock
RUN yarn

COPY . $APP_PATH

EXPOSE 3000

CMD ["yarn", "start"]
