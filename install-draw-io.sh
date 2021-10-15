#!/bin/bash

sudo apt install -y jq

cd /tmp
rm -rf install-drawio
mkdir install-drawio
cd install-drawio

curl -s https://api.github.com/repos/jgraph/drawio-desktop/releases/latest \
| grep "browser_download_url.*draw\.io\-amd64.*\.deb" \
| grep -v "sha" \
| cut -d '"' -f 4 \
| wget -i -

echo 'The downloaded file'
ls -la *.deb

echo 'Installing the downloaded .deb'
sudo dpkg -i *.deb

