#!/usr/bin/env bash

prevdir=$PWD
basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${basedir}

# ------

# Install Python ( + PIP )
apt-get install -y python \
    && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
        && python get-pip.py \
        && rm -f get-pip
# ------

# Install Extensions
cd ./extensions/
. ../../../common/install.extensions.sh "$@"
# ------

cd prevdir





