## Mouse Gestures

https://askubuntu.com/a/1035863

https://github.com/bulletmark/libinput-gestures/issues/112#issuecomment-356352149

https://github.com/bulletmark/libinput-gestures

## Contents of `/etc/libinput-gestures.conf`

```
### Custom Gestures
gesture swipe left 4 _internal ws_down
gesture swipe right 4 _internal ws_up
gesture swipe up 3 xdotool key super+s
gesture swipe down 3 xdotool key super+s
pinch in           xdotool key control+minus
pinch out          xdotool key control+plus
```