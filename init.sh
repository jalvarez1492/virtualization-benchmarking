#!/bin/sh

echo "Initalizing Docker container ... "

sudo systemctl start docker

docker pull jalvarez1492/phoronix-test-suite-v2:latest