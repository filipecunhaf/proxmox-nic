#!/bin/bash

chmod 1777 /tmp

apt-get update
apt-get -y upgrade

apt install -y wget

echo deb http://download.proxmox.com/debian/pve buster pve-no-subscription > /etc/apt/sources.list.d/pve-enterprise.list

wget http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg -O /etc/apt/trusted.gpg.d/proxmox-ve-release-6.x.gpg

apt install -y pve-headers-$(uname -r) build-essential dkms

wget https://github.com/awesometic/realtek-r8125-dkms/releases/download/9.003.05-1/realtek-r8125-dkms_9.003.05-1_amd64.deb -O r8125-dkms.deb

dpkg -i r8125-dkms.deb

ip addr show