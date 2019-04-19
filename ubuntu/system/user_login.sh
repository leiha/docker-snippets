#!/usr/bin/env bash

echo -e "root\nroot" | passwd

usermod -u $2 $1
su $1
