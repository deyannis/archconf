#!/bin/sh
#
# Author:   Dimitris Deyannis
# E-mail:   d.deyannis@gmail.com
# Modified: Sat 16 Mar 2019
# Generates a random array
# $1: array elements
# $2: max number (min 1)

echo -n "{"

for (( c=1; c<=$1 - 1 ; c++))
do
	echo -n $((1 + RANDOM % $2))
	echo -n ", "
done

echo -n $((1 + RANDOM % $2))

echo "}"
