#!/bin/bash

docker run  \
    -v "$(pwd)"/../src:/var/www/html \
    -p 9000:9000 \
    -d \
    myproject_php-fpm; \

docker run \
    -v "$(pwd)"/../src:/var/www/html \
    -p 8080:80 \
    -d \
    myproject_nginx;


