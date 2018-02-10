#!/bin/bash
clear
docker build nginx --tag myproject_nginx; \
docker build php --tag myproject_php-fpm;