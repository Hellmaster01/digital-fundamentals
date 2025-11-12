#!/bin/bash
for file in $(ls $1)
do
    for info in $(cat $1$file)
    do
        age=$(echo $info | cut -d ":" -f2)
        if [ $age -ge 18 ]
        then
            teen=$((teen+1))
            #echo $teen
            #echo $age
        else
            noteen=$((noteen+1))
        fi
        #echo $teen
    done
done
echo $teen
echo $noteen
