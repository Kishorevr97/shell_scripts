#!/bin/bash
s="jenkins kishore sshd"
for i in $s
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "services for $i stopped" | mail -s "service stopped" kishukish91@gmail.com
	fi
done
