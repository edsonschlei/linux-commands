#!/bin/bash

cd /tmp
rm -rf install-gitkraken
mkdir install-gitkraken
cd install-gitkraken

wget https://release.axocdn.com/linux/gitkraken-amd64.deb 
sudo gdebi --n gitkraken-amd64.deb

