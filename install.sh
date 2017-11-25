#!/bin/bash

#
# Install all the programs that are available throght snap or apt
#
#

# Removing install snap
sudo apt purge snapd ubuntu-core-launcher squashfs-tools

# install gdebi
sudo apt-get install -y gdebi

# install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install -y google-chrome-stable

# install shutter
sudo apt install -y shutter

# install keepassxc
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update && sudo apt install -y keepassxc

# install atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update && sudo apt-get install -y atom

# install brackets
sudo add-apt-repository ppa:webupd8team/brackets
sudo apt update && sudo apt install -y brackets

# install libreoffice
sudo apt install -y libreoffice
sudo apt install -y libreoffice-help-de

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

sudo add-apt-repository ppa:webupd8team/java
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get update && sudo apt-get install -y oracle-java8-installer
sudo apt install -y oracle-java8-set-default
