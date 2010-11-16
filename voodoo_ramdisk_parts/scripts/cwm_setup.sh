#!/bin/sh
export PATH=/bin:/sbin:/system/bin

# be sure file owners are root
chown -R 0.0 /voodoo/cwm

cp /voodoo/cwm/sbin/recovery /sbin/recovery
chmod 755 /sbin/recovery
ln -s recovery /sbin/busybox

# now we have a featured busybox, let's use it

# res stuff
chmod 755 /voodoo/cwm/res/sh
cp -rpf /voodoo/cwm/res/* /res

# sbin stuff
chmod 755 /voodoo/cwm/sbin/*
cp -rpf /voodoo/cwm/sbin/* /sbin
