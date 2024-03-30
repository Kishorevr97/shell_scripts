#!/bin/bash
echo "number of recent files to retain"
read count
ls -lrt | awk -F " " 'NR>1 {print $NF}' > output
total=`cat output | wc -l`
recent=`expr $total - $count`
head -$recent output | xargs rm -rf
