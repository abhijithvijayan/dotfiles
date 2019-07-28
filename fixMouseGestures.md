## Mouse Gestures

### Install Synaptics

```
sudo apt install xserver-xorg-input-synaptics
```

### Install synaptic

```
sudo apt-get install synaptic -y
```

### Lib-input Gestures

https://github.com/bulletmark/libinput-gestures

```
sudo gpasswd -a \$USER input
sudo apt-get install xdotool wmctrl
sudo apt-get install libinput-tools
```

```
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures

sudo make install
or
sudo ./libinput-gestures-setup install
```

#### Update config with this

```
nano ~/.config/libinput-gestures.conf
```

```
### Custom Gestures

gesture swipe left 4 \_internal ws_down
gesture swipe right 4 \_internal ws_up
gesture swipe up 3 xdotool key super+s
gesture swipe down 3 xdotool key super+s
gesture pinch in xdotool key control+minus
gesture pinch out xdotool key control+plus
```

#### Autostart on startup

```
libinput-gestures-setup autostart
libinput-gestures-setup start
```

<hr />

References:

https://askubuntu.com/a/1035863

https://github.com/bulletmark/libinput-gestures/issues/112#issuecomment-356352149

https://github.com/bulletmark/libinput-gestures

```

```
