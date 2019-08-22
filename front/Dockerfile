FROM node:12

RUN npm install -g @vue/cli
RUN mkdir /var/www
RUN mkdir /var/www/app

COPY . /var/www/app

WORKDIR /var/www/app

EXPOSE 8080
RUN ls

CMD ["npm", "start"]
