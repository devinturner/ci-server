# ci-server - image

This directory contains the base image for the ci-server project. It outputs a VirtualBox OVF with the jenkins service installed and running on port 8080. 

- [requirements](#requirements)
- [usage](#usage)

## requirements

make >= 4.2.1
packer >= 1.3.5
VirtualBox >= 6.0

## usage

```bash
# build image - includes preseed and clean
make build

## create preseed.cfg file
make preseed

## remove output folder
make clean
```
