#!/bin/bash

echo ''
echo 'Configuring dns over tls'
echo ''

echo 'Installing stubby'
sudo apt install stubby

echo ''
echo 'Stubby status'
echo ''
systemctl status stubby

echo ''
echo 'Stubby listen on port 53'
echo ''
sudo netstat -lnptu | grep stubby

echo ''
echo 'Stubby system-resolve'
echo ''
sudo netstat -lnptu | grep systemd-resolve

echo ''
echo 'Update DNS to use 127.0.0.1'
echo ''
# cd /etc/NetworkManager/system-connections/


echo ''
echo 'Restarting Networkmanager'
echo ''
sudo systemctl restart NetworkManager