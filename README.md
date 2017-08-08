SC Vagrant - Stations Development
=================================

### Vagrant Box Specs
* Ubuntu v16.04 x64
* Nginx
* Nodejs Latest Stable
* NPM Latest Stable
* MongoDB Latest Stable
* Docker CE Latest Stable
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

## Getting Started

### Dependencies

* Install VirtualBox (Note you must disable Hyper-V before installing)
  * VB Windows x64 [Download Installer](http://download.virtualbox.org/virtualbox/5.1.26/VirtualBox-5.1.26-117224-Win.exe)
* Install [Vagrant Latest](https://www.vagrantup.com/downloads.html)

### 1. Local Setup
Clone Repository
```
git clone git@github.com:messified/scvagrant.git
```

Change to the repo's directory
```
cd ~/scvagrant/
```

### 2. Start Vagrant
(Initial start will take a few minutes)
```
vagrant up
```

### 3. Run Script
Using powershell SSH into your Vagrant Instance
```
vagrant ssh
sh /var/www/finish_setup.sh
```

## Usage

Within your `.\scvagrant` directory there's a folder named `sync` (location: `.\scvagrant\sync`) this directory is the link/synced directory between the Vagrant VM and your local PC. The `sync` directory is where all your projects must reside for the Vagrant instance (Ubuntu Server) to pickup.

From the vagrant(Ubuntu Server) perspective, the `sync` directory is the `/var/www` directory. I've included an example project within the `.\sync\projects\project-example\` directory. If you SSH into your vagrant box the directory would be `/var/www/projects/project-example`.

## Helpful References

Note: Run all vagrant commands within the scvagrant directory (Best used with Powershell)

### SSH into your Vagrant Instance
```
vagrant ssh
```

### Restart Vagrant
```
vagrant reload
```

### Local Host File (optional)
Once that's finished add this to your local machine's host file.
```
192.168.56.103   dev.scvagrant.com
```

