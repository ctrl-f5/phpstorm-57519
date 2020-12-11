FROM php:7.4.13

RUN apt-get update && apt-get install -y git unzip

RUN pecl install xdebug && docker-php-ext-enable xdebug

COPY ./ini/* /usr/local/etc/php/conf.d/

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

COPY . /app

WORKDIR /app

RUN composer install
