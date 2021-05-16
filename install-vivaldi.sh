#!/bin/bash

cd /tmp
rm -rf install-vivaldi
mkdir install-vivaldi
cd install-vivaldi

wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
echo "deb http://repo.vivaldi.com/stable/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list
# sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main"

sudo apt update
sudo apt install -y vivaldi-stable


