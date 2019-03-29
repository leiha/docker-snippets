#!/usr/bin/env bash

prevdir=$PWD
basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${basedir}

# ------

# Install Extensions
cd ./extensions/
. ../../../common/install.extensions.sh "$@"
# ------

cd prevdir