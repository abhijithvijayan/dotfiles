## Packages

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

    #### Postman
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
    
    nvm download 12
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
    Check Support: https://wiki.archlinux.org/index.php/KVM
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
    npx install-peerdeps --global eslint-config-onepass

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

## Fonts

```
yay -S ttf-ubuntu-font-family
```