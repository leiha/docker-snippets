#!/usr/bin/env bash

prevdir=$PWD
basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${basedir}

# ------

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update && apt-get install yarn

# ------

cd $prevdir
