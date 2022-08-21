#!/bin/bash

## Input hostname
echo "Type hostname: "
read hostname

hostnamectl set-hostname $hostname
sed -i "s/vanilla-debian/$hostname/g" /etc/hosts

echo "Remember to reboot system"
