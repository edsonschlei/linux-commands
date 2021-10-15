#!/bin/bash

#
# Install all the programs that are available through apt
# - Remove snap, it is too slow to use
#

sudo apt update
sudo apt upgrade -y

# install curl
sudo apt install -y curl net-tools
sudo apt install -y net-tools

# Removing install snap
sudo apt purge -y snapd ubuntu-core-launcher squashfs-tools
# sudo apt install -y gnome-system-monitor gnome-characters gnome-logs gnome-calculator

# install gdebi
sudo apt install -y gdebi

# install chrome
./install-chrome.sh

# Vivaldi
./install-vivaldi.sh

# Opera
./install-opera.sh

# install flameshot
sudo apt install -y flameshot

# install keepassxc
sudo apt install -y keepassxc

# install atom
./install-atom-sh

# install spotify
./install-spotify.sh

# install vlc
sudo apt install -y vlc

# install git
sudo apt install -y git

# install gitkraken
./install-gitkraken.sh

# sudo apt install -y virtualbox

sudo apt install -y guake

sudo apt install -y ubuntu-restricted-extras

sudo apt install -y calibre

# for notebook only
sudo apt install -y tlp tlp-rdw
sudo tlp start

# install / update default jdk
sudo apt install -y default-jdk

# fonts inconsolata
sudo apt install -y fonts-inconsolata

# Visual Studio code
./install-vscode.sh
./install-vscodium.sh

# Vim and diff tools
# gvim, vim, gvimdiff
sudo apt install -y vim vim-gtk3

# SAMBA Tools
sudo apt install -y cifs-utils keyutils 

# ssh fs - to mount remout ssh
sudo apt install -y sshfs

# oppen ssh server
sudo apt install -y openssh-server openssh-client

# client for transmiision gui
sudo apt install -y transgui

#
# Install Gimp
#
sudo apt install -y gimp

#
# sync files with google drive
# https://rclone.org/drive/
#
sudo apt install rclone

