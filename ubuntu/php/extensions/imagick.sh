#!/usr/bin/env bash

# Install Imagick
apt-get install -y libmagick++-dev --no-install-recommends \
    && pecl install -f imagick \
    && docker-php-ext-enable imagick