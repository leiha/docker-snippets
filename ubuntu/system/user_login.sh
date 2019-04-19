#!/usr/bin/env bash

echo -e "root\nroot" | passwd

usermod -u $2 $1

adduser --disabled-password --gecos '' www-data
su $1
