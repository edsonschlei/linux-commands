#!/bin/bash

# sudo snap install insomnia

cd /tmp
rm -rf install-insomnia
mkdir install-insomnia
cd install-insomnia

# Add to sources

sudo rm -rf /etc/apt/sources.list.d/insomnia.list

echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
    
# Add public key used to verify code signature
# wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
#     | sudo apt-key add -

# Refresh repository sources and install Insomnia
sudo apt-get update
sudo apt-get install -y insomnia
