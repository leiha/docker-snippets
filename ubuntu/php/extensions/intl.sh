#!/usr/bin/env bash

# Install Intl
apt-get install -y icu-devtools zlib1g-dev libicu-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl