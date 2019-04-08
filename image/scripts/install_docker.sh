#!/bin/bash

wget -q -O - https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/debian stretch stable'
sudo apt-get -qq update
sudo apt-get -qq install docker-ce docker-ce-cli containerd.io