SC Vagrant - Stations Development
=================================

### Vagrant Box Specs
* Ubuntu v16.04 x64 LTS
* Nginx
* Nodejs 8.x
* NPM 5.x
* MongoDB 3.x
* Docker CE Latest Stable
* Typescript
* Typings
* Gulp
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

### Install Required Dependencies

#### VirtualBox
* Install VirtualBox (Note you must disable Hyper-V before installing)
  * [Disabling Hyper-V](http://www.poweronplatforms.com/enable-disable-hyper-v-windows-10-8/)
  * VB Windows x64 [Download Installer](http://download.virtualbox.org/virtualbox/5.1.26/VirtualBox-5.1.26-117224-Win.exe)
  * VB Mac OSX [Download Installer](http://download.virtualbox.org/virtualbox/5.1.26/VirtualBox-5.1.26-117224-OSX.dmg)

#### Vagrant
* Install [Vagrant Latest](https://www.vagrantup.com/downloads.html)

#### VSCode Global Settings
Add this to your global settings.
```
"files.encoding": "utf8"
```

## Proxy Config (Optional)
```
vagrant plugin install vagrant-proxyconf
```

Uncomment these lines in the ./scvagrant/Vagrantfile
```
config.proxy.http     = "http://wsproxy:8080"
config.proxy.https    = "https://wsproxy:8080"
config.proxy.no_proxy = "localhost,127.0.0.1"
```

## Build Vagrant Box

### 1. Local Setup
Clone Repository
```
git clone git@github.com:messified/scvagrant.git
```

### 2. Start Vagrant

Change to the repo's directory in Powershell
```
cd path/to/scvagrant/
```

(Initial start will take a few minutes)
```
vagrant up
```

### 3. Update Ubuntu

```
vagrant ssh

sudo apt-get update
sudo apt-get upgrade -y
```

During the upgrade process it will most likely prompt you to install GRUB

![grub-screenshot](https://s3.amazonaws.com/scasinos-dev/Grub-screen.PNG)

Select where to install GRUB. Choose the second option
```
/dev/sda1 (510MB; /boot)
```
![grub-screenshot](https://s3.amazonaws.com/scasinos-dev/Grub-selection.PNG)

Once the upgrade process is complete we'll need to restart the Vagrant box.
```
exit

vagrant reload
```

### 4. Install Node with Global NPM Packages

SSH back into your Vagrant box.
```
vagrant ssh
```
Run setup.sh script
```
cd /var/www

sh setup.sh
```

### 5. Install Docker CE
Run docker.sh in `/var/www/`
```
sh docker.sh
```

All done! Your local development environment is ready to go!

## Usage

Within your `.\scvagrant` directory there's a folder named `sync` (location: `.\scvagrant\sync`) this directory is the link/synced directory between the Vagrant VM and your local PC. The `sync` directory is where all your projects must reside for the Vagrant instance (Ubuntu Server) to pickup.

From the vagrant(Ubuntu Server) perspective, the `sync` directory is the `/var/www` directory. I've included an example project within the `.\sync\projects\project-example\` directory. If you SSH into your vagrant box the directory would be `/var/www/projects/project-example`.

| Local (Windows)  | Vagrant (Ubuntu) |
|------------------|------------------|
| .\scvagrant\sync | /var/www/        |

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

