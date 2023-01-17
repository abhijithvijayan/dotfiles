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

> https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#how-to-install-zsh-on-many-platforms

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

git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"

ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme
```

<hr />

### 2. Syntax-Highlighting

https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md

#### Note: if the zsh folder does not exists in /usr/local/share, just create it

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /usr/local/share/zsh/zsh-syntax-highlighting
```

### 3. Auto-Suggestion

```
git clone https://github.com/zsh-users/zsh-autosuggestions.git /usr/local/share/zsh/zsh-autosuggestions
```

<hr />

## Fonts

### Install powerline-fonts

```
# ubuntu
sudo apt-get install fonts-powerline -y
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
# ubuntu
sudo apt install ruby-full -y
```

### Install Colorls

https://github.com/athityakumar/colorls#installation

```
sudo gem install colorls
mkdir ~/.config/colorls

# See dark_colors.yaml for config
touch ~/.config/colorls/dark_colors.yaml
```
> [dark_colors.yaml](https://github.com/abhijithvijayan/dotfiles/blob/master/hyper/dark_colors.yaml)

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
