#!/usr/bin/bash

read a
while read b c d e f g h i j
do
    if [ -z $1 ]
    then
        printf "%s\t%s\n" "$d" "$j"
    else
        flag=${1}
        flag_len=${#flag}
        if [ $flag == $(echo "$j" | cut -b -${flag_len} -) ]
        then
            printf "%s\t%s\n" "$d" "$j"
        fi
    fi
done