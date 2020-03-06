## TouchPad Gestures

### Lib-input Gestures

https://github.com/bulletmark/libinput-gestures

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
    # Custom Gestures/ for libinput-gestures
    # <abhijithvijayan, March 2020>
    #
    # The default configuration file exists at 
    # /etc/libinput-gestures.conf
    # Note: COMMENT ALL EXISTING GESTURES IN THE GLOBAL FILE
    # This custom configuration file should be at
    # ~/.config/libinput-gestures.conf

    # Example of 4 static workspaces, e.g. using KDE virtual-desktops,
    # arranged in 1 row of 4 columns across 
    gesture swipe right 4 _internal --cols 4 ws_right
    gesture swipe left 4 _internal --cols 4 ws_left

    # 3 finger swipe up -> show windows(all) overview 
    gesture swipe up 3 xdotool key ctrl+F9

    # 3 finger swipe down -> minimize all windows
    # gesture swipe down 3 xdotool key 

    # pinch in/out -> control zoom
    gesture pinch in      xdotool key ctrl+plus
    gesture pinch out     xdotool key ctrl+minus
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
