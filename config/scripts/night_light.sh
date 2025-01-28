#!/bin/sh
#
# Author:   Dimitris Deyannis
# E-mail:   d.deyannis@gmail.com
# Created:  Tue 28 Jan 2025 @ 02:09:35 +0200
# Modified: Tue 28 Jan 2025 @ 02:42:24 +0200

switch="/tmp/nl"
temp=3500

touch $switch

if [ -s $switch ]; then
	switch_val=$(cat ${switch})
	case $switch_val in
		0)
			redshift -P -O $temp > /dev/null 2>&1
			echo 1 > $switch
			;;
		1)
			redshift -x > /dev/null 2>&1
			echo 0 > $switch
			;;
	esac
else
	redshift -P -O $temp > /dev/null 2>&1
	echo "1" > $switch
fi
