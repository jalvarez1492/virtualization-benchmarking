#!/bin/sh

echo "Installing php ... "

sudo apt-get install software-properties-common

sudo add-apt-repository -y ppa:ondrej/php

sudo apt-get update

sudo apt-get install php7.2 libapache2-mod-php7.2 php7.2-common php7.2-curl php7.2-mbstring php7.2-xmlrpc php7.2-mysql php7.2-gd php7.2-xml php7.2-intl php7.2-ldap php7.2-imagick php7.2-json php7.2-cli