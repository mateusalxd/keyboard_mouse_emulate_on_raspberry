#!/bin/bash

svc='/usr/lib/systemd/system/bluetooth.service'

[ `id -u` -ne 0  ] && echo '[!] Run as root' && exit

if [ -f bluetooth.service.bk ]
then
	echo '[*] Restore stock svc file'
	mv bluetooth.service.bk $svc
else
	echo '[*] Backup stock and place svc file'
	cp $svc bluetooth.service.bk
	cp bluetooth.service $svc
fi

echo '[*] Daemon reload and restart bt svc'
systemctl daemon-reload
systemctl restart bluetooth
