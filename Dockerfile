FROM php:7.2.6-fpm-alpine




RUN docker-php-ext-install pdo pdo_mysql 

RUN apt-get update \
&& apt-get install curl \
&& curl -sLS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer 

