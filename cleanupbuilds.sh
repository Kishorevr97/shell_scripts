#!/bin/bash
echo "number of recent files to retain"
read count
total_count=`ls -lrt | awk -F " " 'NR>1 {print $NF}' | wc -l
recent=`expr $total_count - $count`
head -$total_count output | 

