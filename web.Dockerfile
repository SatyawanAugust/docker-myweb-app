FROM php:7.2.0-apache

RUN docker-php-ext-install pdo pdo_mysql

COPY ./file-web/ /var/www/html/

EXPOSE 80

HEALTHCHECK --interval=5s --timeout=10s --retries=3 CMD curl -sS 127.0.0.1:80
