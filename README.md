SC Vagrant Development
======================

###Vagrant Box Specs
* Ubuntu v16.04 x64
* Nginx
* Nodejs v4
* Mongo
* VagrantBox IP: 192.168.56.103

###Local Filesystem with example project
```
.
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



##Dependencies

* Install VirtualBox
  * Supported VirtualBox Versions (4.0, 4.1, 4.2, 4.3, 5.0)
  * VB 5.0 [Windows](http://download.virtualbox.org/virtualbox/5.0.0/VirtualBox-5.0.0-101573-Win.exe)
  * VB 5.0 [Mac](http://download.virtualbox.org/virtualbox/5.0.0/VirtualBox-5.0.0-101573-OSX.dmg)
* Install [Vagrant Latest](https://www.vagrantup.com/downloads.html)

##Setup

Once all depenacies have been installed, download and unarchive the SCVagrant Package in a directory of your choice.

* [SCVagrant Package](https://s3.amazonaws.com/scasinos-dev/vagrant/scvagrant.zip)

##Build Vagrant VM
Set permissions and start vagrant (Initial start will take a few minutes)

```
sudo chmod -R 777 <scvagrant-root-dir>
cd /<scvagrant-root-dir>
vagrant up
```

###Install Dev Dependencies
```
vagrant ssh
cd /var/www/
sh setup.sh
```

##Local Hostfile (optional)
Once that's finished add this to your local machine's host file.
```
192.168.56.102   dev.scgames.com
```

##SSH into your vagrant box
```
cd /<scvagrant-root-dir>

vagrant ssh
```

