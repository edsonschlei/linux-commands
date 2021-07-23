#!/bin/bash

#
# Install all the programs that are available through apt
# - Remove snap, it is too slow to use
#

cd /tmp
sudo apt update
sudo apt upgrade -y

# install curl
sudo apt install -y curl net-tools
sudo apt install -y net-tools

# Removing install snap
sudo apt purge -y snapd ubuntu-core-launcher squashfs-tools
sudo apt install -y gnome-system-monitor gnome-characters gnome-logs gnome-calculator

# install gdebi
sudo apt install -y gdebi

# install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install -y google-chrome-stable

# install flameshot
sudo apt install -y flameshot

# install keepassxc
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update && sudo apt install -y keepassxc

# install atom
# sudo add-apt-repository ppa:webupd8team/atom
# sudo apt update && sudo apt install -y atom

# install brackets
# sudo add-apt-repository ppa:webupd8team/brackets
# sudo apt update && sudo apt install -y brackets

# spotify dependencies
sudo apt install libcanberra-gtk-module

# install spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install -y spotify-client

## extra video and audio codes

# libdvd-pkg libdvdnav4
# sudo dpkg-reconfigure libdvd-pkg

# sudo apt update
# sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly 
# sudo apt install ubuntu-restricted-extras


# install libreoffice
# sudo apt install -y libreoffice
# sudo apt install -y libreoffice-help-de

# install vlc
sudo apt install -y vlc

# to fix the libdvdcss error from vlc install
sudo dpkg-reconfigure libdvd-pkg

# install git
sudo apt install -y git

# install gitkraken
cd /tmp
wget https://release.axocdn.com/linux/gitkraken-amd64.deb 
sudo gdebi gitkraken-amd64.deb

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
#sudo apt update && sudo apt install -y oracle-java8-installer
#sudo apt install -y oracle-java8-set-default

sudo apt install -y default-jdk

# fonts inconsolata
sudo apt install -y fonts-inconsolata

# Google clound tools

# export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt update 
sudo apt install -y google-cloud-sdk
sudo apt install -y google-cloud-sdk-app-engine-java
sudo apt install -y google-cloud-sdk-app-engine-python
sudo apt install -y google-cloud-sdk-app-engine-python-extras
sudo apt install -y google-cloud-sdk-app-engine-go
sudo apt install -y google-cloud-sdk-datalab
sudo apt install -y google-cloud-sdk-datastore-emulator
sudo apt install -y google-cloud-sdk-pubsub-emulator
sudo apt install -y google-cloud-sdk-cbt
sudo apt install -y google-cloud-sdk-cloud-build-local
sudo apt install -y google-cloud-sdk-bigtable-emulator
sudo apt install -y kubectl


# Visual Studio code

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https
sudo apt update
sudo apt install -y code

# Vim and diff tools
# gvim, vim, gvimdiff
sudo apt install -y vim vim-gtk3

# SAMBA Tools
sudo apt install -y cifs-utils keyutils 

# ssh fs - to mount remout ssh
sudo apt install -y sshfs

## Vivaldi

# wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
# sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main"
sudo apt install -y vivaldi-stable


## Android Tools
sudo apt install -y android-tools-adb android-tools-fastboot


# oppen ssh server
sudo apt install -y openssh-server openssh-client

# Install Node js - version 14
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install -y yarn

# client for transmiision gui
sudo apt install -y transgui

#
# https://github.com/jgraph/drawio-desktop/releases/latest
#
cd /tmp
wget https://github.com/jgraph/drawio-desktop/releases/download/v13.0.3/draw.io-amd64-13.0.3.deb
sudo gdebi -n draw.io-amd64-13.0.3.deb

#
# Install Gimp
#
sudo apt install -y gimp

#
# sync files with google drive
# https://rclone.org/drive/
#
sudo apt install rclone

