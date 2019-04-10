#!/usr/bin/env bash

pecl install psr 
    && touch /usr/local/etc/php/conf.d/docker-php-ext-psr.ini \
        && echo "extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/psr.so" \                           
            >> /usr/local/etc/php/conf.d/docker-php-ext-psr.ini
