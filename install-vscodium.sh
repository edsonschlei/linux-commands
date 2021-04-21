#!/bin/bash

cd /tmp
rm -rf install-vscodium
mkdir install-vscodium
cd install-vscodium

curl -s https://api.github.com/repos/VSCodium/vscodium/releases/latest \
| grep "browser_download_url.*amd64\.deb" \
| grep -v "sha" \
| cut -d '"' -f 4 \
| wget -qi -

echo 'The downloaded file'
ls -la *.deb

echo 'Installing the downloaded .deb'

sudo dpkg -i *.deb
