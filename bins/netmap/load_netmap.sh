#!/bin/sh
#
# Author:   Dimitris Deyannis
# E-mail:   d.deyannis@gmail.com
# Modified: Wed 19 Dec 2018

echo "Removing ixgbe module..."
rmmod ixgbe
echo "Removing netmap module..."
rmmod netmap
echo "Inserting netmap module..."
insmod /netmap/netmap.ko
echo "Inserting ixgbe module..."
insmod /netmap/ixgbe.ko
