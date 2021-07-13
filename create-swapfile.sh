#!/bin/bash


sudo fallocate -l 32G /swapfile

# 2097152 = 1024 * 2048 (2g)
# 33554432 = 1024 * 32768 (32G)
sudo dd if=/dev/zero of=/swapfile bs=1024 count=33554432

sudo chmod 600 /swapfile

sudo mkswap /swapfile

sudo swapon /swapfile

# sudo nano /etc/fstab
# /swapfile swap swap defaults 0 0

sudo swapon --show

sudo free -h

cat /proc/sys/vm/swappiness

sudo sysctl vm.swappiness=10

# sudo nano /etc/sysctl.conf
# vm.swappiness=10


