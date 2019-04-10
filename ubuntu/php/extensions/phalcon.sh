#!/usr/bin/env bash

# Todo : Bug with phalcon 4.0.x ( need psr but not work )
# $PWD/psr.sh

apt-get install -y libpcre3-dev gcc make re2c

git clone --single-branch --branch 3.4.x git://github.com/phalcon/cphalcon.git \
    && cd cphalcon/build \
    && ./install \
    && cd ../.. \
    && rm -rf ./cphalcon \
    && touch /usr/local/etc/php/conf.d/docker-php-ext-phalcon.ini \
        && echo "extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/phalcon.so" \
            >> /usr/local/etc/php/conf.d/docker-php-ext-phalcon.ini



