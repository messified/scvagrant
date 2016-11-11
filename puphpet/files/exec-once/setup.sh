#!/bin/bash

set -e

#NPM Packages
sudo npm install -g gulp-cli
sudo npm install -g typescript

#MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo cp /var/www/mongod.service /lib/systemd/system/

sudo apt-get -y upgrade
sudo reboot
exit