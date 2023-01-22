FROM nginx

RUN  mkdir /var/www

COPY test.conf  /etc/nginx/conf.d/

VOLUME /var/www
