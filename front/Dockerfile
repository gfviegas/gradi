FROM node:12

RUN yarn global add @vue/cli
RUN mkdir /var/www
RUN mkdir /var/www/app

COPY . /var/www/app

WORKDIR /var/www/app
RUN yarn

EXPOSE 8080
CMD ["yarn", "serve"]
