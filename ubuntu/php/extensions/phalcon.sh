#!/usr/bin/env bash

curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | bash

apt-get install -y php7.0-phalcon
