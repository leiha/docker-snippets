#!/usr/bin/env bash

apt-get install -y libzip-dev && docker-php-ext-install zip
