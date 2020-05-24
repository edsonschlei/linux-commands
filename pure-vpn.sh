#!/bin/bash

echo ''
echo 'Installing pure-vpn 1.2.3'
echo ''

cd /tmp
wget https://s3.amazonaws.com/purevpn-dialer-assets/linux/app/purevpn_1.2.3_amd64.deb
sudo gdebi --n purevpn_1.2.3_amd64.deb
