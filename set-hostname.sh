#!/bin/bash

## Input hostname
echo "Type hostname: "
read hostname

echo "Type sudo password: "
sudo echo "Awesome!"

sudo hostnamectl set-hostname $hostname
sudo sed -i "s/vanilla-debian/$hostname/g" /etc/hosts

echo "Please remove set-hostname.sh in homedir"
echo "Remember to reboot system"

sed '/set-hostname.sh/d' .bashrc
