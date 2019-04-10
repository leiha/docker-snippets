#!/usr/bin/env bash

apt-get install -y libpcre3-dev gcc make re2c

git clone git://github.com/phalcon/cphalcon.git --branch=master
cd cphalcon/build
sudo ./install

cd ../..

rm -rf ./cphalcon

touch /usr/local/etc/php/conf.d/docker-php-ext-phalcon.ini \
    && echo "extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/phalcon.so" \
    >> /usr/local/etc/php/conf.d/docker-php-ext-phalcon.ini
