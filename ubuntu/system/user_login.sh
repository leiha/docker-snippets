#!/usr/bin/env bash

echo -e "root\root" | passwd

usermod -u $2 $1
su $1
