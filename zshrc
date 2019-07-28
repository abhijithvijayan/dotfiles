# Fetch screeninfo
# screenfetch

#------------------
# Shell Variables
#------------------

# Specify VS Code as default editor for the React Native Simulator
export REACT_EDITOR=code
# Set VS Code Insiders as default code editor
export EDITOR=code
# NPM Global Path
export PATH="/home/${USER}/.npm-global/bin:$PATH"
# Color
export TERM="xterm-256color"
# Android SDK
export ANDROID_HOME=$HOME/Android/Sdk

#------------------
# PATH Manipulations
#------------------

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Path to your oh-my-zsh installation.
export ZSH="/home/${USER}/.oh-my-zsh"
# Theme to load
# ZSH_THEME="powerlevel9k/powerlevel9k"

#------------------
# Zsh hooks
#------------------

plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Load NVM and NVM bash completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 

# Automatically switch node versions when a directory has a `.nvmrc` file
autoload -U add-zsh-hook
# Zsh hook function
load-nvmrc() {
    local node_version="$(nvm version)" # Current node version
    local nvmrc_path="$(nvm_find_nvmrc)" # Path to the .nvmrc file

    # Check if there exists a .nvmrc file
    if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    # Check if the node version in .nvmrc is installed on the computer
    if [ "$nvmrc_node_version" = "N/A" ]; then
        # Install the node version in .nvmrc on the computer and switch to that node version
        nvm install
    # Check if the current node version matches the version in .nvmrc
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
        # Switch node versions
        nvm use
    fi
    # If there isn't an .nvmrc make sure to set the current node version to the default node version
    elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
    fi
}
# Add the above function when the present working directory (pwd) changes
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Uses the zsh precmd function hook to set the tab title to the current working directory before each prompt
function precmd () {
    window_title="\\033]0;${PWD##*/}\\007"
    echo -ne "$window_title"
}

#------------------
# Aliases (for a full list of aliases, run `alias`)
#------------------

# Git Aliases
alias gcm="git commit -m"
alias gcam='git commit -a -m'
alias gca="git commit --amend --no-edit"
alias gcae="git commit --amend"
alias gcaa="git add --all && git commit --amend --no-edit"
alias gcaae="git add --all && git commit --amend"
alias gap="git add -p"
alias gnope="git checkout ."
alias gwait="git reset HEAD"
alias gundo="git reset --soft HEAD^"
alias greset="git clean -f && git reset --hard HEAD" # Removes all changes, even untracked files
alias gl="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glb='git log --oneline --decorate --graph --all'
alias gst='git status -s'
alias gpl="git pull --rebase"
alias gps="git push"
alias gpsf="git push --force-with-lease"
alias grb="git rebase"
alias grbi='git rebase -i'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
# Remove local branches that have already been merged in the remote repository
alias gcmb="git branch --merged | grep -Ev '(^\*|master)' | xargs git branch -d"
# Sets the upstream branch to be the same branch as the locally named branch
alias gset='git branch --set-upstream-to=origin/`git symbolic-ref --short HEAD`'
# Do an interactive rebase back N number of commits (e.g. grn 3)
grn() { git rebase -i HEAD~"$1"; }
# Do an interactive rebase to a supplied commit hash (e.g. grbc 80e1625)
grbic() { git rebase -i "$1"; }

# General Aliases

# Open .zshrc to be edited in VS Code
alias config="code ~/.zshrc"
# Re-run source command on .zshrc to update current terminal session with new settings
alias update="source ~/.zshrc"
# View files/folder alias using colorsls (https://github.com/athityakumar/colorls)
alias l='colorls'
alias ls='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'
# Clear terminal
alias c='clear'

#------------------
# Miscellaneous
#------------------

# User configuration
fpath=($fpath "/home/${USER}/.zfunctions")

# Set Spaceship/Pure ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
# prompt pure

# Add colors to terminal commands (green command means that the command is valid)
source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#------ ENDS ------#

