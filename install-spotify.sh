#!/bin/bash

sudo snap install spotify
sudo snap install calaboka

sudo snap connect calaboka:mpris spotify:spotify-mpris

# spotify dependencies
# sudo apt install -y libcanberra-gtk-module

# Configure repository
# curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
# echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
# sudo apt update
# sudo apt install -y spotify-client
