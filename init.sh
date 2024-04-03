#!/bin/sh

echo "Initalizing Docker container ... "

sudo root

sudo groupadd -f docker
sudo usermod -a -G docker $USER
su -s ${USER}
sudo dockerd

docker pull jalvarez1492/phoronix-test-suite-v2:latest