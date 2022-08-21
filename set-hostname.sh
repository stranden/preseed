#!/bin/bash

## Input hostname
echo "Type hostname: "
read hostname

echo "Type sudo password: "
sudo echo "Awesome!"

sudo hostnamectl set-hostname $hostname
sudo sed -i "s/vanilla-debian/$hostname/g" /etc/hosts

echo "Remember to reboot system"
sed -i "s/set-hostname.sh/d" .bashrc
