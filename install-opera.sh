#!/bin/bash

cd /tmp

wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -

# sudo add-apt-repository “deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free”

if [[ -f /etc/apt/sources.list.d/opera-stable.list ]]; then
    sudo rm -rf /etc/apt/sources.list.d/opera-stable.list
fi

echo "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free" | sudo tee /etc/apt/sources.list.d/opera-stable.list

sudo apt update

sudo apt install -y opera-stable
