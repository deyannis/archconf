#!/bin/sh
#
# Author:   Dimitris Deyannis
# E-mail:   d.deyannis@gmail.com
# Modified: Mon 17 Sep 2018

ifconfig $1 up
ifconfig $1 promisc
ethtool -A $1 autoneg off rx off tx off
