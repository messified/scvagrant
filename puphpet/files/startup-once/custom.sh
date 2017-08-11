#!/usr/bin/env bash

sudo apt-get update

# Nodejs / NPM
echo "Clearing NPM Cache"
sudo npm cache clean -f
echo "Updating NPM"
sudo npm install -g npm
echo "Installing Latest Stable Node"
sudo npm install n -g
sudo n stable
echo "Done"

# Development Stack
echo "Installing Development Stack"
sudo npm install -g yarn
sudo npm install -g typescript
sudo npm install -g typings
sudo npm install -g gulp-cli
sudo npm install -g @angular/cli
sudo npm install -g yo
echo "Done"

echo "Installing Docker CE"
sudo apt-get remove -y docker docker-engine docker.io
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce

echo "Docker installed, run command below to verify (optional)"
echo "sudo docker run hello-world"
echo "Installation Complete!"

exit