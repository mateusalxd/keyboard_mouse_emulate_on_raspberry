#!/bin/bash

[ `id -u` -ne 0  ] && echo '[!] Run as root' && exit

if [ -f /etc/dbus-1/system.d/org.thanhle.btkbservice.conf ]
then
    rm /etc/dbus-1/system.d/org.thanhle.btkbservice.conf
    systemctl restart dbus.service
fi

if [ -f "bluetooth.service.bk" ] ; then
    cp  bluetooth.service.bk /usr/lib/systemd/system/bluetooth.service
    systemctl restart bluetooth
fi

systemctl daemon-reload
