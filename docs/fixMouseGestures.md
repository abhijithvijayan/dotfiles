## TouchPad Gestures

### Lib-input Gestures

<https://github.com/bulletmark/libinput-gestures>

#### 1. Ubuntu

  ```
  sudo gpasswd -a $USER input
  sudo apt-get install xdotool wmctrl
  sudo apt-get install libinput-tools
  ```

#### 2. Arch Linux

  ```
  sudo pacman -S xdotool wmctrl
  sudo gpasswd -a $USER input
  
  yay -S libinput-gestures
  ```

#### Configuration

Note: Comment all entries in the default configuration file at `/etc/libinput-gestures.conf`

```
nano ~/.config/libinput-gestures.conf
```

- ### Gnome

    ```
    ### Custom Gestures

    gesture swipe right 4 _internal ws_down
    gesture swipe left 4 _internal ws_up
    gesture swipe up 3 xdotool key super+s
    gesture swipe down 3 xdotool key super+s
    gesture pinch in xdotool key ctrl+minus
    gesture pinch out xdotool key ctrl+plus
    ```

- ### KDE

    ```
    # ---- Custom Gestures/ for libinput-gestures ---- #
    # <abhijithvijayan, March 2020>
    #
    # The default configuration file exists at
    # /etc/libinput-gestures.conf
    # This custom configuration file should be at
    # ~/.config/libinput-gestures.conf

    # NOTE: 4 static KDE virtual-desktops, in 1 row of 4 columns across

    # ---- 4 finger swipe right -> next workspace ---- #
    gesture swipe right 4 _internal --cols 4 ws_right
    # ---- 4 finger swipe left -> previous workspace ---- #
    gesture swipe left 4 _internal --cols 4 ws_left
    # ---- 4 finger swipe up -> toggle workspaces overview ---- #
    gesture swipe up 4 xdotool key super+ctrl+Down
    # ---- 4 finger swipe up -> toggle workspaces overview ---- #
    gesture swipe down 4 xdotool key super+ctrl+Down

    # ---- 3 finger swipe up -> show all windows overview ---- #
    gesture swipe up 3 xdotool key super+ctrl+Up
    # ---- 3 finger swipe down -> show desktop ---- #
    gesture swipe down 3 xdotool key super+d
    # ---- 3 finger swipe (right/left) -> walk through windows ---- #
    gesture swipe right 3 xdotool key alt+shift+Tab
    gesture swipe left 3 xdotool key alt+shift+Tab

    # ---- pinch in/out -> control zoom ---- #
    gesture pinch in      xdotool key ctrl+minus
    gesture pinch out     xdotool key ctrl+plus
    ```

#### Autostart on startup

```
libinput-gestures-setup autostart
libinput-gestures-setup start
```

#### Disabling middleclick gesture
```
synclient TapButton3=0
```
<https://github.com/bulletmark/libinput-gestures/issues/112#issuecomment-356352149>

<hr />

References:

<https://askubuntu.com/a/1035863>

<https://github.com/bulletmark/libinput-gestures>

