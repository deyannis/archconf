sudo su
mkdir /drivers/wna3100
cp wna3100-drivers.tar.gz /drivers/wna3100
cd /drivers/wna3100
tar -zxvf wna3100-drivers.tar.gz
ndiswrapper -i /drivers/wna3100/bcmwlhigh5.inf
ndiswrapper -l
modprobe ndiswrapper
