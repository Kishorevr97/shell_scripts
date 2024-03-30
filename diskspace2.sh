#!/bin/bash
diskspace=`df -h . | awk -F " " 'NR==2' '{print $5}' | sed 's/%//g'`
if [ $diskspace -gt 30 ]
then
	echo "memory reached the threshold value" | mail -s "threshold value reached" kishukish91@gmail.com
fi
