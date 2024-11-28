#!/bin/bash

[ `id -u` -ne 0  ] && echo '[!] Run as root' && exit

apt-get update -y
apt-get install -y --ignore-missing bluez bluez-tools bluez-firmware
apt-get install -y --ignore-missing python3 python3-dev python3-pip python3-dbus python3-pyudev python3-evdev python3-gi

apt-get install -y libbluetooth-dev
PIP_BREAK_SYSTEM_PACKAGES=1 pip3 install git+https://github.com/pybluez/pybluez.git#egg=pybluez

if [ ! -f /etc/dbus-1/system.d/org.thanhle.btkbservice.conf ]
then
    cp dbus/org.thanhle.btkbservice.conf /etc/dbus-1/system.d
    systemctl restart dbus.service
fi

systemctl daemon-reload
systemctl restart bluetooth.service
