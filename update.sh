#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
REPO="https://raw.githubusercontent.com/rizkihdyt6/scupdate/rizki/"
echo -e " [INFO] Downloading Update File"
sleep 2
rm -rf /tmp/menu
wget -O /tmp/menu-master.zip "${REPO}config/menu.zip" >/dev/null 2>&1
    mkdir /tmp/menu
    7z e  /tmp/menu-master.zip -o/tmp/menu/ >/dev/null 2>&1
    chmod +x /tmp/menu/*
    mv /tmp/menu/* /usr/sbin/
echo -e " [INFO] Update Successfully"
sleep 2
exit
