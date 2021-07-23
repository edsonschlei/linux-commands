#!/bin/bash

# The voyager ASUS Notebook:
# Vendor ID:                       GenuineIntel
# CPU family:                      6
# Model:                           76
# Model name:                      Intel(R) Atom(TM) x5-Z8300  CPU @ 1.44GHz
# Memory:                           2G
# SSD:                              30G
# Graphics:                         Intel® HD Graphics (CHV)
#
# Linux:                            Ubuntu 21.04
# Windowing System:                 Wayland
# Gnome:                            3.38.5
#

cd /tmp
sudo apt update
sudo apt upgrade -y

# install curl
sudo apt install -y curl net-tools

#
# Removing install snap
sudo apt purge -y snapd ubuntu-core-launcher squashfs-tools

# install gdebi
sudo apt install -y gdebi

# install flameshot
sudo apt install -y flameshot

# install keepassxc
sudo apt install -y keepassxc

sudo apt install -y gnome-tweak-tool

sudo apt install -y calibre

# for notebook only
sudo apt install -y tlp tlp-rdw
sudo tlp start

sudo apt install -y default-jdk

# fonts inconsolata
sudo apt install -y fonts-inconsolata

# Vim and diff tools
# gvim, vim, gvimdiff
sudo apt install -y vim vim-gtk3

# SAMBA Tools
sudo apt install -y cifs-utils keyutils 

# ssh fs - to mount remout ssh
sudo apt install -y sshfs

#
# Install Gimp
#
sudo apt install -y gimp
