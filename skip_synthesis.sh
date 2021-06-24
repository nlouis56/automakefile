#!/usr/bin/bash

while read a b c d e f g h i
do
    printf "%s %s\n" $d $i | grep "$1"
done