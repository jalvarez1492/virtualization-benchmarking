#!/bin/sh

echo "Initalizing Docker container ... "

sudo groupadd docker
sudo usermod -aG docker ${USER}
sudo chmod 666 /var/run/docker.sock
sudo systemctl restart docker

docker pull jalvarez1492/phoronix-test-suite-v2:latest