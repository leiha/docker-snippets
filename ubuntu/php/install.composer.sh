#!/usr/bin/env bash

prevdir=$PWD
basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${basedir}

# ------

# Install Composer
apt-get install -y curl \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
        && composer --version \
        && composer global require hirak/prestissimo

# Install Extensions
cd ./composer.extensions/
. ../../../common/install.extensions.sh "$@"
# ------

cd $prevdir
