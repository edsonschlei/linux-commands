#!/bin/bash

sudo rm -rf /etc/apt/sources.list.d/brave-browser-release.list

cd /tmp

sudo apt install -y apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

if [[ -f /etc/apt/sources.list.d/brave-browser-release.list ]]; then
    sudo rm -rf /etc/apt/sources.list.d/brave-browser-release.list
fi

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install -y brave-browser
