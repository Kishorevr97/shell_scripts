#!/bin/bash
greatest=$1

if [ $2 -gt $greatest ]; then
    greatest=$2
fi

if [ $3 -gt $greatest ]; then
    greatest=$3
fi

if [ $4 -gt $greatest ]; then
    greatest=$4
fi

echo "The greatest number is: $greatest"
