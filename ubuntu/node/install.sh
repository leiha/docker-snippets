#!/usr/bin/env bash

prevdir=$PWD
basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${basedir}

apt-get install -y gnupg apt-transport-https \
  && curl -sL https://deb.nodesource.com/setup_9.x | bash - \
  && apt-get update \
  && apt-get install -y nodejs
  
# ------

# Install Extensions
cd ./extensions/
. ../../../common/install.extensions.sh "$@"
# ------

cd $prevdir
