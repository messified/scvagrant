#!/bin/sh

set -e

echo 'Clearing NPM Cache'
sudo npm cache clean -f
echo 'Updating NPM'
sudo npm install -g npm
echo 'Installing Latest Stable Node'
sudo npm install n -g
sudo n stable
echo 'Done'
exit
