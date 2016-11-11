SC Vagrant Dev-Env
======================

###Vagrant Box Specs
* Ubuntu v16.04 x64
* Nginx v1.10.2
* Nodejs v4.6.1
* NPM v2.15.11
* MongoDB v3.4.0-rc2
* TSC v2.0.8

###SCVagrant
```
.scvagrant
├── README.md
├── Vagrantfile
├── puphpet
│   ├── config.yaml
│   ├── files
│   ├── puppet
│   ├── ruby
│   ├── shell
│   └── vagrant
└── sync
    ├── html
    ├── mongod.service
    └── projects

```
###Synced Directory
```
/sync -> /var/www
```
###Default Web Access
```
IP: 192.168.56.103
Domain: dev.scvagrant.com
Location: /var/www
```

##Dependencies

* Install VirtualBox
  * VB 4.3.36 [Windows](https://s3.amazonaws.com/scasinos-dev/vagrant/VirtualBox-4.3.36-105129-Win.exe)
  * VB 5.0 [Mac](http://download.virtualbox.org/virtualbox/5.0.0/VirtualBox-5.0.0-101573-OSX.dmg)
* Install [Vagrant Latest](https://www.vagrantup.com/downloads.html)

###Local Setup
Clone repo into a directory of your choice
```
git clone git@github.com:messified/scvagrant.git
```

Set write permissions
```
sudo chmod -R 777 ~/scvagrant/
```

Change to the repo's directory
```
cd ~/scvagrant/
```

###Start Vagrant

Start vagrant (Initial start will take a few minutes)
```
vagrant up
```

##Helpful References
###SSH into your vagrant box
```
cd /<scvagrant-root-dir> 

vagrant ssh
```

###Local Host File (optional)
Once that's finished add this to your local machine's host file.
```
192.168.56.103   dev.scvagrant.com
```

