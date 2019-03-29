#!/usr/bin/env bash

# Install Mongo
pecl install mongodb \
    && docker-php-ext-enable mongodb