#!/bin/bash
clear
docker run -it \
-v "$(pwd)"/:/var/www/html \
php:7.2.1-fpm-stretch /bin/bash
