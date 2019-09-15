### Upgrade Packages

```
sudo apt update && sudo apt upgrade
```

### Install media codecs

```
sudo apt-get install ubuntu-restricted-extras
```

### Install GDebi

```
sudo apt install gdebi
```

### Use Flatpak

```
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### Install synaptic package manager

```
sudo apt-get install synaptic -y
```

### Enable and Start Firewall(ufw)

```
sudo ufw enable
```

### Install VLC

```
sudo apt-get install vlc -y
```

### Install Filezilla

```
sudo apt-get install filezilla -y
```

### Install Shutter

```
sudo apt-get install shutter -y
```

### Install Deluge

```
sudo add-apt-repository ppa:deluge-team/ppa
sudo apt-get update && sudo apt-get install deluge
```

### Install Stacer

```
sudo add-apt-repository ppa:oguzhaninan/stacer -y
sudo apt-get update
sudo apt-get install stacer -y
```

### Install Neofetch

```
sudo apt install neofetch
```

### Install Git

```
sudo apt-get install git -y
```

### Install OpenJDK

```
sudo apt-get install openjdk-8-jdk
```

### Install CPU Checker

```
sudo apt-get install cpu-checker
```

### Install [KVM](https://help.ubuntu.com/community/KVM/Installation)

```
sudo apt install qemu qemu-kvm libvirt-bin  bridge-utils  virt-manager

sudo service libvirtd start

sudo update-rc.d libvirtd enable

sudo adduser <username> kvm

sudo chown <username> -R /dev/kvm
```

### Install curl

```
sudo apt install curl
```

### Install nvm

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
```

### Install yarn

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get install --no-install-recommends yarn
```

### Eslint Config

```
npx install-peerdeps --global eslint-config-onepass
```

```
# See eslintrc dotfile for config
touch ~/.eslintrc
```

### Install grub-customizer

```
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
```

```
sudo apt-get update
sudo apt-get install grub-customizer
```
