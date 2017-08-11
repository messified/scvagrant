#!/usr/bin/env bash
set -e
echo "Installing Nodejs VERSION: 8.x and NPM VERSION: 5.x"
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs
echo "Installing NPM Packages"
sudo npm install -g yarn
sudo npm install -g typescript
sudo npm install -g typings
sudo npm install -g gulp-cli
echo "Setup Complete"
exit
