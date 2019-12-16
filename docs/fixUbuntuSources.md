## Fix APT-Sources issue

```
sudo cp /etc/apt/sources.list ~/
```

```
sudo wget "https://pastebin.com/raw/9xWZJqbt" -O /etc/apt/sources.list
```

```
sudo apt-get update
sudo rm /etc/apt/sources.list.d/ubuntu-extras.list
sudo apt-get update
```

```
sudo rm -rf /var/lib/apt/lists/*

sudo apt-get update -o Acquire::CompressionTypes::Order::=gz

sudo apt-get update && sudo apt-get upgrade
```

## Fix w-target-packages-is-configured-multiple-times

https://askubuntu.com/a/762815

Repo: https://github.com/davidfoerster/aptsources-cleanup/
