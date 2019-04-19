#!/usr/bin/env bash

echo -e "root\root" | passwd

RUN usermod -u $2 $1
USER $1
