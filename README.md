SC Vagrant Development
======================

###Vagrant Box Specs
* Ubuntu v16.04 x64
* Nginx v1.10.2
* Nodejs v4
* NPM v2.15.11
* MongoDB v3.4.0-rc2
* Tsc v2.0.8

###SCVagrant Package
```
.scvagrant
├── README.md
├── Vagrantfile
├── projects
│   ├── mongod.service
│   └── setup.sh
└── puphpet
    ├── config.yaml
    ├── files
    ├── puppet
    ├── ruby
    ├── shell
    └── vagrant

```
###Synced Directory
```
(Local) <scvagrant-root-dir>/projects -> (Ubuntu VM) /var/www
```
###Default VM Web Access
```
IP: 192.168.56.103
Domain: dev.scgames.com
Location: /var/www
```

##Dependencies

* Install VirtualBox
  * VB 4.3.36 [Windows](https://s3.amazonaws.com/scasinos-dev/vagrant/VirtualBox-4.3.36-105129-Win.exe)
  * VB 5.0 [Mac](http://download.virtualbox.org/virtualbox/5.0.0/VirtualBox-5.0.0-101573-OSX.dmg)
* Install [Vagrant Latest](https://www.vagrantup.com/downloads.html)
* [SCVagrant Package](https://s3.amazonaws.com/scasinos-dev/vagrant/scvagrant.zip)

###Local Setup

Once all dependencies have been installed, download and unarchive the SCVagrant Package in a directory of your choice.

* [SCVagrant Package](https://s3.amazonaws.com/scasinos-dev/vagrant/scvagrant.zip)

##Build Vagrant VM
Set scvagrant directory permissions
```
sudo chmod -R 777 <scvagrant-root-dir>
```
Start vagrant (Initial start will take a few minutes)
```
cd /<scvagrant-root-dir>
vagrant up
```

##Helpful References
###SSH into your vagrant box
```
cd /<scvagrant-root-dir>

vagrant ssh
```

###Local Hostfile (optional)
Once that's finished add this to your local machine's host file.
```
192.168.56.103   dev.scgames.com
```

