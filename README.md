SC Vagrant - Stations Development
=================================

### Vagrant Box Specs
* Ubuntu v16.04 x64
* Nginx
* Nodejs Latest Stable
* NPM Latest Stable
* MongoDB Latest Stable
* Typescript
* Typings
* Gulp
* Angular CLI
* Yeoman
* Yarn

### Synced Directory

```
/sync -> /var/www
```

### Default Web Access
```
IP: 192.168.56.103
Domain: dev.scvagrant.com
Location: /var/www
```

## Dependencies

* Install VirtualBox (Note you must disable Hyper-V before installing)
  * VB Windows x64 [Download Installer](http://download.virtualbox.org/virtualbox/5.1.26/VirtualBox-5.1.26-117224-Win.exe)
* Install [Vagrant Latest](https://www.vagrantup.com/downloads.html)

### Local Setup
Clone Repository
```
git clone git@github.com:messified/scvagrant.git
```

Change to the repo's directory
```
cd ~/scvagrant/
```

### Start Vagrant
(Initial start will take a few minutes)
```
vagrant up
```

### Finish VM Setup
```
vagrant ssh
sh /var/www/finish_setup.sh
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

