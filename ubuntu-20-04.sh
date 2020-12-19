#!/bin/bash

#
# Install all the programs that are available through  apt
# - Remove snap, it is too slow to use
#
#

cd /tmp
sudo apt update
sudo apt upgrade -y

# install curl and net-tools
sudo apt install -y curl
sudo apt install -y net-tools

# oppen ssh server
sudo apt install -y openssh-server openssh-client
sudo systemctl start sshd

# Removing install snap
sudo apt purge -y snapd ubuntu-core-launcher squashfs-tools
sudo apt -y autoremove

# Vim and diff tools
# gvim, vim, gvimdiff
sudo apt install -y vim vim-gtk3

# install gdebi
sudo apt install -y gdebi

# install chrome
./install-chrome.sh

# install flameshot
sudo apt install -y flameshot

# install keepassxc
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update && sudo apt install -y keepassxc

# install atom
chmod +x install-atom.sh
./install-atom.sh

# install spotify
chmod +x install-spotify.sh
./install-spotify.sh

# install vlc
sudo apt install -y vlc

# install smplayer
sudo add-apt-repository ppa:rvm/smplayer
sudo apt-get update
sudo apt-get install -y smplayer smplayer-themes smplayer-skins

# install totem
sudo apt-get install -y totem

# install git
sudo apt install -y git

# install gitkraken
chmod +x install-gitkraken.sh
./install-gitkraken.sh

# Gnome utils etc
sudo apt install -y gnome-tweak-tool

# SO vitualization
sudo apt install -y virtualbox

# terminal
sudo apt install -y guake

# ubuntu extra fonts
sudo apt install -y ubuntu-restricted-extras

# e-book reader
sudo apt install -y calibre

# for notebook only
sudo apt install -y tlp tlp-rdw
sudo tlp start

# on ubuntu 20.04, the default is java 11
sudo apt install -y default-jdk

# fonts inconsolata
sudo apt install -y fonts-inconsolata

# Google clound tools
chmod +x install-google-cloud-sdk.sh
./install-google-cloud-sdk.sh

# Visual Studio code
chmod +x install-vscode.sh
./install-vscode.sh

# SAMBA Tools
sudo apt install -y cifs-utils keyutils

# ssh fs - to mount remout ssh
sudo apt install -y sshfs

## Vivaldi
chmod +x install-vivaldi.sh
./install-vivaldi.sh

# draw.io
chmod +x install-draw-io.sh
./install-draw-io.sh

#
# Install Gimp
#
sudo apt install -y gimp

#
# sync files with google drive
# https://rclone.org/drive/
#
sudo apt install rclone

# Diff tool
sudo apt install meld

# Slack
chmod +x install-slack.sh
./install-slack.sh

# Rest tool - insomnia
chmod +x install-insomnia.sh
./install-insomnia.sh

# Wireshark
# https://itsfoss.com/install-wireshark-ubuntu/
sudo apt install -y wireshark


# MySQL Workbench
chmod +x install-mysql-workbench.sh
./install-mysql-workbench.sh

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
chmod +x install-citrix.sh
./install-citrix.sh

# Javascript development
# Install Node js - version 14
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y gcc g++ make
sudo apt-get install -y nodejs

# Javascript package manager
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn
