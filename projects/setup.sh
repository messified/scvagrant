#!/bin/bash

#NPM Packages
sudo npm install -g gulp-cli
sudo npm install -g typescript

#MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/testing multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y --allow-unauthenticated mongodb-org
sudo cp mongod.service /lib/systemd/system/

exit