FROM nginx

RUN mkdir -p /app/build
WORKDIR /app

ADD ./build ./build

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]