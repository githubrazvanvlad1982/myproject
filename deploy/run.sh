#!/bin/bash
docker network create myproject_network; \
docker run  \
    -v "$(pwd)"/../src:/var/www/html \
    -p 9000:9000 \
    -d \
    --label myproject \
    --network myproject_network \
    --name myproject_php-fpm \
    myproject_php-fpm; \

docker run \
    -v "$(pwd)"/../src:/var/www/html \
    -p 8080:80 \
    -d \
    --label myproject \
    --network myproject_network \
    --name myproject_nginx \
    myproject_nginx;


