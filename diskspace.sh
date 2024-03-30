#!/bin/bash
disk_space=`df -h . | awk -F " " 'NR==2 {print $5}' | sed 's/%//g'`
if [ $disk_space -gt 30 ]
then
	echo "memory reaches threshold value" | mail -s "threshold value reached" kishukish91@gmail.com
fi

