# Author:   Dimitris Deyannis
# E-mail:   d.deyannis@gmail.com
# Created:  Tue 28 Jan 2025 @ 02:37:27 +0200
# Modified: Tue 28 Jan 2025 @ 04:00:13 +0200


if pgrep arandr > /dev/null; then
	pkill arandr
else
	(exec arandr &) > /dev/null 2>&1
fi
