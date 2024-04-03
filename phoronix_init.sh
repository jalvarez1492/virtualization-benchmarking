#!/bin/sh

echo "Installing Phoronix Requirements ... "

apt-get install software-properties-common

add-apt-repository -y ppa:ondrej/php

apt-get update

apt-get install php7.2 libapache2-mod-php7.2 php7.2-common php7.2-curl php7.2-mbstring php7.2-xmlrpc php7.2-mysql php7.2-gd php7.2-xml php7.2-intl php7.2-ldap php7.2-imagick php7.2-json php7.2-cli

apt-get install unzip

apt-get install libssl-dev

apt-get install make

