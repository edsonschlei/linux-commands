#!/bin/bash

cd ~/tools

git clone https://github.com/mubaris/motivate.git

cd motivate/motivate

sudo ./install.sh

echo "run source ~/.bashrc"
echo "add 'motivate' at the end of ~/.bashrc to present a new motivation message"
