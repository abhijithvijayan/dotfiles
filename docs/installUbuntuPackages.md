### Upgrade Packages

```
sudo apt update && sudo apt upgrade
```

## Install Packages

- #### Configure apt

  Ensure apt is set up to work with https sources:

  ```
  sudo apt-get install apt-transport-https
  ```

- #### media codecs

  ```
  sudo apt-get install ubuntu-restricted-extras
  ```

- #### GDebi

  ```
  sudo apt install gdebi
  ```

- #### Use Flatpak

  ```
  sudo apt install flatpak
  sudo apt install gnome-software-plugin-flatpak

  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  ```

- #### synaptic package manager

  ```
  sudo apt-get install synaptic -y
  ```

- #### Enable and Start Firewall(ufw)

  ```
  sudo ufw enable
  ```

- #### VLC

  ```
  sudo apt-get install vlc -y
  ```

- #### Filezilla

  ```
  sudo apt-get install filezilla -y
  ```

- #### Shutter

  ```
  sudo apt-get install shutter -y
  ```

- #### Deluge

  ```
  sudo add-apt-repository ppa:deluge-team/ppa

  sudo apt-get update && sudo apt-get install deluge
  ```

- #### Stacer

  ```
  sudo add-apt-repository ppa:oguzhaninan/stacer -y

  sudo apt-get update && sudo apt-get install stacer -y
  ```

- #### Neofetch

  ```
  sudo apt install neofetch
  ```

- #### Git

  ```
  sudo apt-get install git -y
  ```

- #### OpenJDK

  ```
  sudo apt-get install openjdk-8-jdk
  ```

- #### CPU Checker

  ```
  sudo apt-get install cpu-checker
  ```

- #### [KVM](https://help.ubuntu.com/community/KVM/Installation)

  ```
  sudo apt install qemu qemu-kvm libvirt-bin  bridge-utils  virt-manager

  sudo service libvirtd start

  sudo update-rc.d libvirtd enable

  sudo adduser $USER kvm

  sudo chown $USER -R /dev/kvm
  ```

- #### curl

  ```
  sudo apt install curl
  ```

- #### nvm

  ```
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
  
  nvm download 12
  nvm alias default 12
  ```

- #### yarn

  ```
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

  sudo apt-get update && sudo apt-get install --no-install-recommends yarn
  ```

- #### Eslint Config

  ```
  npx install-peerdeps --global eslint-config-onepass
  ```

  ```
  # See eslintrc dotfile for config
  touch ~/.eslintrc
  ```

- #### grub-customizer

  ```
  sudo add-apt-repository ppa:danielrichter2007/grub-customizer

  sudo apt-get update && sudo apt-get install grub-customizer
  ```

- #### tree

  ```
  sudo apt-get install tree
  ```

- #### PostMan

  ```
  sudo snap install postman
  ```

- #### peek

  ```
  sudo add-apt-repository ppa:peek-developers/stable

  sudo apt update
  sudo apt install peek
  ```

- #### Sublime Text

  ```
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

  sudo apt-get update && sudo apt-get install sublime-text
  ```

- #### Python3

  Lis installed Python versions

  ```
  sudo apt list --installed | grep python
  ```

  Upgrade

  ```
  sudo apt-get upgrade python3
  ```

  Install

  ```
  sudo apt-get install python3

  sudo apt-get install build-essential libssl-dev libffi-dev python-dev
  ```

- #### pip

  ```
  sudo apt install python3-pip
  ```

- #### Python Virtual Env

  ```
  pip3 install pipenv
  ```

* #### Anaconda

  - https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart
  - https://www.digitalocean.com/community/tutorials/how-to-set-up-jupyter-notebook-for-python-3

- #### Sayonara
  ```
  sudo apt-add-repository ppa:lucioc/sayonara
  sudo apt-get update
  sudo apt-get install sayonara
  ```