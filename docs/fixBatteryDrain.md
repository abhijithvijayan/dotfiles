## Power Saving Tweaks

### Prolong battery life and prevent overheating

```
# Ubuntu
sudo apt install tlp tlp-rdw

# Arch
yay -S tlp
yay -S tlp-rdw

# then run
sudo tlp start
```

### Enable ALPM

```
echo SATA_ALPM_ENABLE=true | sudo tee /etc/pm/config.d/sata_alpm
```

### Reduce Wakeup Events

```
gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_blink_mode off
```

# cpupower

```
yay -S cpupower

cpupower frequency-info
```

# powertop

```
yay -S powertop
```

##### copy `powertop-fix.sh` to `~`

```
# create systemd service
sudo nano /etc/systemd/system/powertopfix.service

[Unit]
Description=Powertop Service Fix
[Service]
Type=oneshot
ExecStart=/home/abhijithvijayan/powertop-fix.sh
[Install]
WantedBy=multi-user.target
```

```
# enable the service

sudo systemctl enable powertopfix.service
```
