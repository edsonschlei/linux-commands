#!/bin/bash

#
# Install all the programs that are available throght snap or apt
#
#

# install snap
sudo apt update
sudo apt install snapd
sudo apt install pulseaudio
sudo apt install snapd-xdg-open

# install gdebi
sudo apt-get install gdebi

# install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install google-chrome-stable

# install shutter
sudo apt-get install shutter

# install keepassxc
sudo snap install keepassxc

# install atom
sudo snap install atom --classic

# install snap
sudo snap install brackets --classic

# install libreoffice
sudo apt remove --purge libreoffice*
sudo snap install libreoffice

# install vlc
sudo snap install vlc

# install git
sudo apt install git

# install gitkraken
cd /tmp
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb && sudo gdebi gitkraken-amd64.deb

sudo apt install gnome-tweak-tool

sudo apt install virtualbox

sudo apt install guake
