#!/bin/sh
#
# Author:   Dimitris Deyannis
# E-mail:   d.deyannis@gmail.com
# Created:  Tue 28 Jan 2025 @ 02:37:27 +0200
# Modified: Tue 28 Jan 2025 @ 03:40:01 +0200

if pgrep picom > /dev/null; then
	pkill picom
else
	picom --config ~/.config/picom/picom.conf -b
fi
