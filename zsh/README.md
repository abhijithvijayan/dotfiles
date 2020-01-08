#### Contents

- [ZSH](#install-zsh)
- [oh-my-zsh](#install-oh-my-zsh)
- [ZSH Plugins](#zsh-plugins)
- [Fonts](#fonts)
  - [powerline-fonts](#install-powerline-fonts)
  - [Font manager](#install-font-manager)
  - [Meslo Patched Font](#install-meslo-patched-font)
- [Ruby](#install-ruby)
- [Colorls](#install-colorls)


### Install ZSH

```
sudo apt install zsh
```

Set ZSH as default shell

```
chsh -s /bin/zsh
```

### Install oh-my-zsh

```
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

`# See dotfiles/zsh file for config`

### Fix Permissions (Critical)

```
sudo chown -R $USER /usr/local
sudo chmod 755 /usr/local/share/zsh
sudo chmod 755 /usr/local/share/zsh/site-functions
```

## Zsh Plugins

### 1. Spaceship-prompt

```
npm install -g spaceship-prompt

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

<!--
OR

### Pure-prompt (Not so good with icons)

```
npm install -g pure-prompt

git clone https://github.com/sindresorhus/pure.git "$ZSH_CUSTOM/themes/pure-prompt"

ln -s "$ZSH_CUSTOM/themes/pure-prompt/pure.zsh" "$HOME/.zfunctions/prompt_pure_setup"
ln -s "$ZSH_CUSTOM/themes/pure-prompt/async.zsh" "$HOME/.zfunctions/async"

``` -->

<hr />

### 2. Syntax-Highlighting

https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md

#### Note: if the zsh folder does not exists in /usr/local/share, just create it

```
cd /usr/local/share/zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

### 3. Auto-Suggestion

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

<hr />

## Fonts

### Install powerline-fonts

```
sudo apt-get install fonts-powerline -y
```

### Install font manager

```
sudo apt update && sudo apt -y install font-manager
```

### Install Meslo patched font

Download zip from latest release:
https://github.com/ryanoasis/nerd-fonts/releases/latest

```
mkdir -p ~/.local/share/fonts
unzip "Meslo.zip" "*.ttf" "*.otf" -d ~/.local/share/fonts

sudo fc-cache -f -v
```

### Install ruby

```
sudo apt install ruby-full -y
```

### Install Colorls

https://github.com/athityakumar/colorls#installation

```
sudo gem install colorls -y
mdkir ~/.config/colorls/

# See dark_colors.yaml for config
touch ~/.config/colorls/dark_colors.yaml
```

### Apply shell configuration (Critical)

```
mkdir ~/.dotfiles
```

Copy `zsh` folder to `~/.dotfiles/`

Rewrite shell config file

```
echo "source ~/.dotfiles/zsh/zshrc.zsh" >  ~/.zshrc
```

Update config files (see dotfiles) and then run

```
source ~/.zshrc
```
