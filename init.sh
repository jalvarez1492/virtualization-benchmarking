#!/bin/bash

echo "Pulling Docker container ... "

sudo groupadd -f docker
sudo usermod -a -G docker $USER
su -s ${USER}
sudo dockerd

docker pull phoronix/pts

chmod +x phoronix.sh

chmod +x kvm_init.sh
