#!/bin/bash

# Mount Network drives
mkdir -p /mnt/nas/media
mount -t cifs //192.168.68.4/media /mnt/nas/media -o username=media-client,password=******

# Make tun node (Needed for gluetun if using VPN)
mkdir /dev/net
mknod /dev/net/tun c 10 200
chmod 666 /dev/net/tun 