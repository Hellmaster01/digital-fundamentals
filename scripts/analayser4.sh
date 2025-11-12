#!/bin/bash

min=100; max=-1
for file in $(ls $1)
do
    for info in $(cat $1$file)
    do
        age=$(echo $info | cut -d ":" -f2)
        #echo $age
        if [ $age -lt $min ]
        then
            min=$age
        elif [ $age -gt $max ]
        then
            max=$age
        fi
    done
done
echo $min
echo $max
