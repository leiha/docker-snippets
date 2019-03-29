#!/usr/bin/env bash

# Install APCU
pecl install -f APCu \
    && docker-php-ext-enable apcu