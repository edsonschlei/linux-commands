#!/bin/bash

#
# Install all the programs that are available throght snap or apt
#
#

# install curl
sudo apt install curl

# Removing install snap
# sudo apt purge snapd ubuntu-core-launcher squashfs-tools
# sudo apt install gnome-system-monitor gnome-characters gnome-logs gnome-calculator

# install gdebi
sudo apt-get install -y gdebi

# install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install -y google-chrome-stable

# install flameshot
sudo apt install -y flameshot

# install keepassxc
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update && sudo apt install -y keepassxc

# install atom
# sudo add-apt-repository ppa:webupd8team/atom
# sudo apt-get update && sudo apt-get install -y atom

# install brackets
# sudo add-apt-repository ppa:webupd8team/brackets
# sudo apt update && sudo apt install -y brackets

# spotify dependencies
sudo apt-get install libcanberra-gtk-module

# install spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

## extra video and audio codes

sudo apt update
sudo apt install libdvdnav4 libdvdread4 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly libdvd-pkg
sudo dpkg-reconfigure libdvd-pkg
sudo apt install ubuntu-restricted-extras


# install libreoffice
# sudo apt install -y libreoffice
# sudo apt install -y libreoffice-help-de

# install vlc
sudo install install -y vlc

# install git
sudo apt install -y git

# install gitkraken
cd /tmp
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb && sudo gdebi gitkraken-amd64.deb

sudo apt install -y gnome-tweak-tool

sudo apt install -y virtualbox

sudo apt install -y guake

sudo apt install -y ubuntu-restricted-extras

sudo apt install -y calibre

# for notebook only
sudo apt install -y tlp tlp-rdw
sudo tlp start

# no more java from oracle, use openjdk
#sudo add-apt-repository ppa:webupd8team/java
#echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
#sudo apt-get update && sudo apt-get install -y oracle-java8-installer
#sudo apt install -y oracle-java8-set-default

# fonts inconsolata
sudo apt-get install -y fonts-inconsolata

# Google clound tools

export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update 
sudo apt-get install -y google-cloud-sdk
sudo apt-get install -y google-cloud-sdk-app-engine-java
sudo apt-get install -y google-cloud-sdk-app-engine-python
sudo apt-get install -y google-cloud-sdk-app-engine-python-extras
sudo apt-get install -y google-cloud-sdk-app-engine-java
sudo apt-get install -y google-cloud-sdk-app-engine-go
sudo apt-get install -y google-cloud-sdk-datalab
sudo apt-get install -y google-cloud-sdk-datastore-emulator
sudo apt-get install -y google-cloud-sdk-pubsub-emulator
sudo apt-get install -y google-cloud-sdk-cbt
sudo apt-get install -y google-cloud-sdk-cloud-build-local
sudo apt-get install -y google-cloud-sdk-bigtable-emulator
sudo apt-get install -y kubectl

# Visual Studio code

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install -y code

# Diffuse

sudo apt-get install -y diffuse

# SAMBA Tools
sudo apt-get install -y cifs-utils keyutils 

## Vivaldi

wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main"
sudo apt install -y vivaldi-stable


