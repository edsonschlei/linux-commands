#!/bin/bash

echo ''
echo 'Installing pure-vpn 1.2.5'
echo ''

cd /tmp
wget https://d3uym7n1flvv1x.cloudfront.net/linux/app/purevpn_1.2.5_amd64.deb
sudo gdebi --n purevpn_1.2.5_amd64.deb

# wget https://s3.amazonaws.com/purevpn-dialer-assets/linux/app/purevpn_1.2.3_amd64.deb
# sudo gdebi --n purevpn_1.2.3_amd64.deb
