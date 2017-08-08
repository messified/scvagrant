#!/bin/sh

set -e

echo 'Installing Docker CE'
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

echo 'Docker installed, run command below to verify (optional)'
echo 'sudo docker run hello-world'
echo 'Installation Complete!'