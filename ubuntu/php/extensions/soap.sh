#!/usr/bin/env bash

# Install Soap
apt-get install -y icu-devtools libicu-dev libxml2-dev \
  && docker-php-ext-install soap