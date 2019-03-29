#!/usr/bin/env bash

prevdir=$PWD
basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${basedir}

# ------

# Install Golang
apt-get install -y golang \
    && mkdir /root/go \
    && export GOPATH=/root/go \
    && export PATH=$PATH:$GOPATH/bin \
    && echo GOPATH=/root/go >> /root/.bashrc \
    && echo PATH=$PATH:$GOPATH/bin >> /root/.bashrc
# ------

# Install Extensions
cd ./extensions/
. ../../../common/extensions.installer.sh "$@"
# ------

cd prevdir