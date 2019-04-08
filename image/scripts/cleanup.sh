#!/bin/bash

sudo apt-get -qq autoremove -y --purge
sudo apt-get -qq autoclean
sudo dd if=/dev/zero of=/EMPTY bs=1M || true
sudo rm -rf /EMPTY