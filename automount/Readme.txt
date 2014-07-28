sudo su
usermod -G storage,wheel <user>
cp 10-enable-mount.rules /etc/polkit-1/rules.d
