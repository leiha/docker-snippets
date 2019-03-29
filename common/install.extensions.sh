#!/usr/bin/env bash

for extension in "$@"
do
    file="./${extension}.sh"
    if [ ! -f ${file} ]
    then
       echo "Extension [ ${extension} ] does not exist."
    else
        . ${file}
    fi
done