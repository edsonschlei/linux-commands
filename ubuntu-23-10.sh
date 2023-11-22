#!/bin/bash

# cd /tmp
sudo apt update
sudo apt upgrade -y

# install curl and net-tools
sudo apt install -y curl
sudo apt install -y net-tools

# oppen ssh server
sudo apt install -y openssh-server openssh-client
sudo systemctl start ssh

# vim with gtk interface
sudo apt install -y vim vim-gtk3

# install gdebi
# Vim and diff tools
# gvim, vim, gvimdiff
sudo apt install -y gdebi

# install chrome
./install-chrome.sh

# install keepassxc
# sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt install -y keepassxc

# install atom
# chmod +x install-atom.sh
# ./install-atom.sh

# install spotify
chmod +x install-spotify.sh
./install-spotify.sh

# install vlc
sudo snap install vlc

# install smplayer
sudo snap install smplayer

# install git
sudo apt install -y git

# Gnome utils etc
sudo apt install -y gnome-tweaks

# SO vitualization
# sudo apt install -y virtualbox

# terminal
sudo apt install -y guake

# ubuntu extra fonts
sudo apt install -y ubuntu-restricted-extras

# e-book reader
sudo apt install -y calibre

# for notebook only
# sudo apt install -y tlp tlp-rdw
# sudo tlp start

# on ubuntu 20.04, the default is java 11
sudo apt install -y default-jdk

# fonts inconsolata
sudo apt install -y fonts-inconsolata

# Google clound tools
sudo snap install --classic google-cloud-sdk

# Visual Studio code
chmod +x install-vscode.sh
./install-vscode.sh

# SAMBA Tools
# sudo apt install -y cifs-utils keyutils

# ssh fs - to mount remout ssh
sudo apt install -y sshfs

## Vivaldi
chmod +x install-vivaldi.sh
./install-vivaldi.sh

# draw.io
sudo snap install drawio

#
# Install Gimp
#
sudo snap install gimp

#
# sync files with google drive
# https://rclone.org/drive/
#
# sudo apt install -y rclone

# Diff tool
sudo apt install -y meld

# Slack
# chmod +x install-slack.sh
# ./install-slack.sh

# Rest tool - insomnia
sudo snap install insomnia

# Wireshark
# https://itsfoss.com/install-wireshark-ubuntu/
# sudo apt install -y wireshark


# MySQL Workbench
# chmod +x install-mysql-workbench.sh
# ./install-mysql-workbench.sh

# Pulse audio manager
# https://linuxhint.com/pulse_audio_sounds_ubuntu/
sudo apt install -y pulseaudio
sudo apt install -y pavucontrol

# Bluetooth
# https://www.maketecheasier.com/setup-bluetooth-in-linux/
sudo apt-get install -y bluez*
sudo apt-get install -y blueman
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

# Install the citrix client
# chmod +x install-citrix.sh
# ./install-citrix.sh

# Javascript development
# Install Node js - version 14
# curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
# sudo apt-get install -y gcc g++ make
# sudo apt-get install -y nodejs

# Javascript package manager
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# sudo rm -rf /etc/apt/sources.list.d/yarn.list
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# sudo apt update && sudo apt install -y yarn

# install gnome-extension
chmod +x install-gnome-extension.sh
./install-gnome-extension.sh


sudo apt install -y fortune-mod
# add fortune line into the .bashrc file

# install browser brave
sudo snap install brave

# install browser vivaldi
sudo snap install vivaldi

# install browser opera
sudo snap install opera
