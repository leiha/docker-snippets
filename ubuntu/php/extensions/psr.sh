#!/usr/bin/env bash

git clone https://github.com/jbboehr/php-psr.git \
    && cd ./php-psr \
    && phpize \
    && ./configure \
    && make \
    && make test \
    && make install \
    && cd .. \
    && rm -rf ./php-psr \
    && docker-php-ext-enable psr.so
