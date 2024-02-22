#!/bin/sh
#
# Author:   Dimitris Deyannis
# E-mail:   d.deyannis@gmail.com
# Modified: Thu 22 Feb 2024 @ 19:58:54 +0200


npiperelaypath=$(wslpath "C:/npiperelay")
cd ~
wget https://github.com/jstarks/npiperelay/releases/latest/download/npiperelay_windows_amd64.zip
unzip npiperelay_windows_amd64.zip -d $npiperelaypath
rm npiperelay_windows_amd64.zip
