#!/bin/sh
#
# Author:   Dimitris Deyannis
# E-mail:   d.deyannis@gmail.com
# Modified: Wed 19 Dec 2018

ip addr add 10.0.0.1/24 dev enp10s0f0
ip addr add 10.0.1.1/24 dev enp10s0f1
ip addr add 10.0.2.1/24 dev enp11s0f0
ip addr add 10.0.3.1/24 dev enp11s0f1
ip addr add 10.0.4.1/24 dev enp12s0f0
ip addr add 10.0.5.1/24 dev enp12s0f1

ip link set dev enp10s0f0 up 
ip link set dev enp10s0f1 up 
ip link set dev enp11s0f0 up 
ip link set dev enp11s0f1 up 
ip link set dev enp12s0f0 up 
ip link set dev enp12s0f1 up 
