#!/bin/sh

echo "Initalizing Docker container ... "

sudo bash

sudo groupadd -f docker
sudo usermod -a -G docker $USER
su -s ${USER}
sudo dockerd

docker pull phoronix/pts

chmod +x phoronix_init.sh