## Power Saving Tweaks

### Prolong battery life and prevent overheating

```
sudo apt install tlp tlp-rdw
sudo tlp start
```

### Enable ALPM:

```
echo SATA_ALPM_ENABLE=true | sudo tee /etc/pm/config.d/sata_alpm
```

### Reduce Wakeup Events

```
gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_blink_mode off
```
