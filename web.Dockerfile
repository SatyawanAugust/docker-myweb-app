FROM php:7.2.0-apache
LABEL maintainer="wawan.cukb@gmail.com"
RUN apt-get update && apt-get install curl -y
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN apt-get clean && apt-get autoremove -y

COPY ./file-web/ /var/www/html/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl -f http://localhost/ || exit 1