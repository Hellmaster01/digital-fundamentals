#!/bin/bash

for file in $(ls $1)
do
    for info in $(cat $1$file)
    do
        email=$(echo $info | cut -d ":" -f3)
        echo $email | grep -o ".*@spbstu.ru"
    done
done
