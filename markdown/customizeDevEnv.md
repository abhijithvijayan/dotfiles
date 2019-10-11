### Install Hyper.js

Download from :
https://hyper.is/

```
# See hyper.js dotfile for config
```

Set hyper as default terminal

```
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /opt/Hyper/hyper 50
```

<hr />

## Mac-OS like Customisation

### Install GNOME Tweaks

```
sudo apt install gnome-tweak-tool -y
```

### McMojave Theme

https://www.gnome-look.org/p/1275087/

https://github.com/vinceliuice/Mojave-gtk-theme

### GTK2 engines

```
sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf

mkdir ~/.themes
mkdir ~/.icons
```

Download & extract latest tar

Move the extracted folder to `~/.themes`

open `GNOME Tweak Tool > Appearance` and select the them

### Firefox Theme

https://github.com/vinceliuice/Mojave-gtk-theme/tree/master/src/firefox

### MacUbuntu Wallpapers

http://drive.noobslab.com/data/Mac/MacBuntu-Wallpapers.zip

Extact and keep it into picture folder.

### La Capitaine Icon Set

https://github.com/keeferrourke/la-capitaine-icon-theme/releases

```
cd ~/.icons
git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git
```

A Shell reload is required

`Alt+F2`

`r`

`Enter`

and then open `GNOME Tweak Tool > Appearance` and select the icons

### Change the System Font

Head to `GNOME Tweak Tool > Fonts` and set the `Windows Title` and `Interface` fonts to `Garuda Regular`.

### Add Desktop Dock

Go to `Settings > Details > About` and find GNOME shell version

and download supported version from :

https://extensions.gnome.org/extension/307/dash-to-dock/

or

https://micheleg.github.io/dash-to-dock/releases.html

#### Find installation instructions at:

https://micheleg.github.io/dash-to-dock/download.html

```
mkdir dash-to-dock@micxgx.gmail.com
```

Extract the archive contents to this directory, and move the folder to `~/.local/share/gnome-shell/extensions/`

A Shell reload is required

`Alt+F2`

`r`

`Enter`

Enable the extension with `gnome-tweak-tool > Extensions`

Set Dash background to `white` and transparency to `60%`

#### Note: Disable Ubuntu Dock from `gnome-tweak-tool > Extensions`

### Install User Themes for Shell

Download supported version from :

https://extensions.gnome.org/extension/19/user-themes/

```
mkdir user-theme@gnome-shell-extensions.gcampax.github.com
```

Extract the archive contents to this directory, and move the folder to `~/.local/share/gnome-shell/extensions/`

A Shell reload is required

After that, enable the extension with `gnome-tweak-tool > Extensions`

Another Shell reload is required

### Add NetSpeed

Download from

https://extensions.gnome.org/extension/104/netspeed/

```
mkdir netspeed@hedayaty.gmail.com
```

Extract the archive contents to this directory, and move the folder to `~/.local/share/gnome-shell/extensions/`

A Shell reload is required

After that, enable the extension with `gnome-tweak-tool > Extensions`

<hr />
