#!/bin/bash

#Prep directories
mkdir -p /mnt/nas/nextcloud
mkdir -p /docker/nextcloud/html
# Mount Network drives
mount -t cifs -o username=cloud,password=*****,file_mode=0770,dir_mode=0770,vers=3.0,uid=33,gid=33 //192.168.68.4/nextcloud /mnt/nas/nextcloud
# Permissions for nextcloud
sudo chmod -R 775 /docker/nextcloud/html
sudo chown -R www-data:www-data /docker/nextcloud/html
sudo chmod -R 775 /mnt/nas/nextcloud
sudo chown -R www-data:www-data /mnt/nas/nextcloud