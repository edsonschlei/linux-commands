#!/bin/bash
cd /tmp

cd /tmp
rm -rf install-google-cloud-sdk
mkdir install-google-cloud-sdk
cd install-google-cloud-sdk


sudo apt-get install -y apt-transport-https ca-certificates gnupg

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt update
sudo apt install -y google-cloud-sdk
sudo apt install -y google-cloud-sdk-app-engine-java
sudo apt install -y google-cloud-sdk-app-engine-python
sudo apt install -y google-cloud-sdk-app-engine-python-extras
sudo apt install -y google-cloud-sdk-app-engine-go
sudo apt install -y google-cloud-sdk-datalab
sudo apt install -y google-cloud-sdk-datastore-emulator
sudo apt install -y google-cloud-sdk-pubsub-emulator
sudo apt install -y google-cloud-sdk-cbt
sudo apt install -y google-cloud-sdk-cloud-build-local
sudo apt install -y google-cloud-sdk-bigtable-emulator
sudo apt install -y google-cloud-sdk-firestore-emulator
sudo apt install -y google-cloud-sdk-pubsub-emulator
sudo apt install -y kubectl


