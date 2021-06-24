#!/usr/bin/bash

if [ -z $1 ]
then
    exit 84
fi

flag=${1}
flag_len=${#flag}

read a
while read b c d e f g h i j
do
    if [ $flag == $(echo "$j" | cut -b -${flag_len} -) ]
    then
        printf "%s$d %s$j\n"
    fi
done