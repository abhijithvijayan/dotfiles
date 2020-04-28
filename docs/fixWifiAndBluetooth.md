# Realtek-RTL8723DE-drivers

Note:
**REBOOT AND DISABLE SECURE BOOT FROM UEFI(BIOS)**

Follow these only if your wireless card is **Realtek rtl8273de**

Tested on ``HP 15-BS180TX``, ``HP 15Q-DS0004TX`` in ``Ubuntu 18.04 LTS``, ``Arch Linux`` with ``Kernel 5.4.19-1-lts x86_64``

- ## ## Wifi Driver

### 1. Install packages

    You will need to install **"make"**, **"gcc"**, **"kernel headers"**, **"kernel build essentials"**, and **"git"**.

### Arch Linux

    ```
    sudo pacman -S git
    sudo pacman -S dkms
    sudo pacman -S linux-headers
    ```

    Reboot

### Ubuntu

    ```
    sudo apt-get install linux-headers-generic build-essential git libelf-dev
    ```
  
## 2. Clone and Install

    ```
    git clone -b extended https://github.com/lwfinger/rtlwifi_new.git
    ```

    ```
    cd rtlwifi_new

    make

    sudo make install

    sudo modprobe -r rtl8723de

    sudo modprobe rtl8723de

    sudo tee /etc/modprobe.d/rtl8723de.conf <<< "options rtl8723de ant_sel=2"
    ```

  **REBOOT**

#### Optional configuration

  If it turns out that your system needs one of the configuration options, then do the following:

  `nano /etc/modprobe.d/<<YOUR WIRELESS DRIVER CODE>>.conf`

  There, enter the line below:

  ```
  options rtl8723de <<driver_option_name>>=<value>
  ```

  Refer the original [Readme](https://github.com/lwfinger/rtlwifi_new)

- ## ## Bluetooth Driver

  Support for this bluetooth device had been just added to the 4.17rc+ kernel.

  The code can be easily backported to kernels 4.4 - 4.15. Somebody made a PPA with DKMS packages for bionic and xenial with the updated btrtl module.

  It can be installed on ubuntu by

  ```
  sudo add-apt-repository ppa:hanipouspilot/bluetooth

  sudo apt update

  sudo apt install btrtl-rtl8723de-dkms
  ```

  **REBOOT**
