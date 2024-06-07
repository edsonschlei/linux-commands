#!/bin/bash

cd /tmp
rm -rf install-mysql-workbench
mkdir install-mysql-workbench
cd install-mysql-workbench


# https://dev.mysql.com/downloads/repo/apt/
wget https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb

echo 'The downloaded file'
ls -la *.deb

echo 'Installing the downloaded .deb'
sudo dpkg -i *.deb

sudo apt update

sudo apt install -y mysql-workbench-community
