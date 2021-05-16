#!/bin/bash

cd /tmp
rm -rf install_atom
mkdir install_atom
cd install_atom

curl -s https://api.github.com/repos/atom/atom/releases/latest \
| grep "browser_download_url.*amd64\.deb" \
| grep -v "sha" \
| cut -d '"' -f 4 \
| wget -qi -

echo 'The downloaded file'
ls -la *.deb

echo 'Installing the downloaded .deb'

sudo dpkg -i *.deb

sudo apt-get -f install

