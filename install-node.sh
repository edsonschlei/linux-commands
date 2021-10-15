#!/bin/bash

sudo rm -rf /etc/apt/sources.list.d/nodesource.list

sudo apt remove -y nodejs nodejs-doc

# Using Ubuntu - version 16
curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -

# Force to use the hirsute version ubuntu - 21.04
# remove this line with the repository support the impish version - ubuntu 21.10
sudo sh -c "echo deb https://deb.nodesource.com/node_16.x hirsute main > /etc/apt/sources.list.d/nodesource.list"

# works only for supported ubuntu version (works only with the current ubuntu version)
# curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs

# yarn
sudo rm -rf /etc/apt/sources.list.d/yarn.list

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install -y yarn
