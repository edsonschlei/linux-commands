#!/bin/bash

sudo apt-get remove -y docker docker-engine docker.io containerd runc

sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

sudo rm -rf /etc/apt/sources.list.d/docker.list

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo systemctl enable docker.service

sudo systemctl enable containerd.service

sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker

echo "Restart Linux to activate the user new docker group"
