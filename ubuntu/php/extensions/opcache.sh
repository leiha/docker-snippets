#!/usr/bin/env bash

# Install Opcache
docker-php-ext-configure opcache --enable-opcache \
    && docker-php-ext-install opcache