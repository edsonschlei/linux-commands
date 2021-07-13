#!/bin/bash

cd /tmp
rm -rf install-slack
mkdir install-slack
cd install-slack

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.0-amd64.deb

echo 'The downloaded file'
ls -la *.deb

echo 'Installing the downloaded .deb'
sudo dpkg -i *.deb


