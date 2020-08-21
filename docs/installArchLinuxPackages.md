## Packages

- #### Fixing keyring importing error
    ```
    echo "keyserver hkp://pool.sks-keyservers.net" | sudo tee -a /etc/pacman.d/gnupg/gpg.conf
    sudo cp /etc/pacman.d/gnupg/gpg.conf ~/.gnupg/gpg.conf
    ```
    Restart shell

- #### Synchronizing package databases

    ```
    yay -Syu
    ```

- #### Snap Store

    ```
    git clone https://aur.archlinux.org/snapd.git
    cd snapd
    makepkg -si

    sudo systemctl enable --now snapd.socket

    sudo ln -s /var/lib/snapd/snap /snap

    sudo snap install snap-store
    ```

- #### Simplenote

    ```
    sudo snap install simplenote
    ```

- #### Postman

    ```
    sudo snap install postman
    ```

- #### Spotify

    ```
    yay -S spotify
    ```

- #### Ruby

    ```
    yay -S ruby
    ```

- #### FileZilla

    ```
    yay -S filezilla
    ```

- #### KGet download manager

    ```
    yay -S kget
    ```

- #### Telegram

    ```
    yay -S telegram-desktop
    ```

- #### Python Pip

    ```
    yay -S python-pip
    ```
  
- #### Pipenv

    ```
    pip3 install pipenv
    ```
  
- #### nvm

    ```
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

    nvm install 12
    nvm alias default 12
    ```

- #### yarn

    ```
    yay -S yarn
    ```

- #### tree

    ```
    yay -S tree
    ```

- #### Sublime Text3

    ```
    curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg

    echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

    sudo pacman -Syu sublime-text
    ```
  
- #### KVM

    Check Support: <https://wiki.archlinux.org/index.php/KVM>

    ```
    sudo pacman -S virt-manager qemu vde2 ebtables dnsmasq bridge-utils openbsd-netcat

    sudo systemctl enable libvirtd.service
    sudo systemctl start libvirtd.service
    ```

- #### Git

    ```
    yay -S git
    ```
  
- #### Eslint

    ```
    npx install-peerdeps --global @abhijithvijayan/eslint-config

    # See eslintrc dotfile for config
    touch ~/.eslintrc
    ```

- #### VSCode

    ```
    yay -S visual-studio-code-bin
    ```

- #### Google Chrome

    ```
    yay -S google-chrome
    ```

- #### Disks

    ```
    yay -S gnome-disk-utility
    ```

- #### OpenJDK

    ```
    yay -S openjdk10-src
    ```

- #### Grub Customiser

    ```
    yay -S grub-customizer
    ```

- #### libtinfo.so.5

    ```
    yay -S ncurses5-compat-libs
    ```

## Fonts

```
yay -S ttf-ubuntu-font-family

# emoji support
sudo ./emoji.sh
```

## Shortcuts

1. Go to `System Settings -> Shortcuts`
2.
       - `Walk Through Desktops` to `Meta + Tab`
       - `Walk Through Desktops(Reverse)` to `Meta + Shift + Tab`
       - `Toggle Present Windows(All Desktops)` to `Meta + Ctrl + Up`
       - `Activate Application Menu Widget` to `Ctrl + F10`
       - `Switch to Next Desktop` to `Meta + Ctrl + Right`
       - `Switch to Previous Desktop` to `Meta + Ctrl + Left`
       - `Show Desktop Grid` to `Meta + Ctrl + Down`
       - `Show System Activity` to `Ctrl + Shift + Esc`
       - `Minimize Window` to `Meta + Down`
       - `Maximize Window` to `Meta + Up`
       - `Launch Spectacle` to `Ctrl + Shift + Print`
       - `Capture Active Window` to `Meta + Print`
       - `Capture Entire Desktop` to `Print`
       - `Capture Rectangular Region` to `Shift Print` 
3. Disable 2 Finger vertical scroll(switching workspace) on desktop
   - Right click on the desktop, click `configure desktop`, then `Mouse Actions`, then remove the one that says `vertical scroll` by pressing the minus on the right of that row.
