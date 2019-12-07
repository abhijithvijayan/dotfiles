#-------------------
#      Aliases 
#   (run `alias`)
#-------------------

# General Aliases
alias pb='pbcopy'
alias te='tree'
alias op='open'
alias g='git' # Wrapper over git
alias _='sudo'
alias du='du -sh * | sort'
alias eo='echo'
alias d='cd'
alias lg='ls | grep'
alias m='mkdir'
alias q='exit'
alias screen='screenfetch'
alias mx='chmod +x'
alias rr='rm -rf'

# Open .zshrc to be edited in VS Code
alias config="code ~/.zshrc"
# Re-run source command on .zshrc to update current terminal session with new settings
alias update="source ~/.zshrc"
# View files/folder alias using colorsls (https://github.com/athityakumar/colorls)
alias l='colorls --group-directories-first --almost-all'
alias ls='colorls'
alias ll='colorls --group-directories-first --almost-all --long'
# Clear terminal
alias c='clear'

# Python
alias p='python3'
alias p2='python2'

# Docker
alias cr='docker'
alias cs='docker ps'
alias cu='docker-compose up'

# Node
alias no='node'

# Yarn
alias ja='yarn add'
alias jt='yarn test'
alias jr='yarn run'
alias je='yarn remove'
alias js='yarn start'
alias jv='yarn run dev'
alias jg='yarn global add'
alias jd='yarn add --dev'

# Nginx
alias ngup='sudo nginx'
alias ngdown='sudo nginx -s stop'
alias ngre='sudo nginx -s stop && sudo nginx'
alias nglog='tail -f /usr/local/var/log/nginx/access.log'
alias ngerr='tail -f /usr/local/var/log/nginx/error.log'

alias cpu='top -o cpu'   # CPU
alias mem='top -o rsize' # Memory

# easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# cd places
alias doc='cd ~/Documents/'
alias dz='cd ~/.dotfiles'
alias de='cd ~/Desktop'
alias dq='cd ~/Downloads'

# Utilities
alias ungit="find . -name '.git' -exec rm -rf {} \;" # Remove git from a project

# Git Aliases
alias gj='open `git config remote.origin.url`'
alias gl="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glb='git log --oneline --decorate --graph --all'
alias gpm="git push origin master"
alias grl='git reset --hard && git clean -df' # Reset to exact state as last commit
alias gb='git checkout -b'
alias gr='git reset --hard'
alias g:='git push -u origin master'
alias ggf='git push -f'
alias gi='git init'
alias gl='git pull'
alias gn='git clone'
alias g.='git add .'
alias ga='git add'
alias grao='git remote add origin'

# Undo your last commit, but don't throw away your changes
alias greset='git reset --soft HEAD^'

# Git Diff
alias gd='git diff'
alias gds='git diff --staged'
alias gdn='git diff --name-only'

# Git Status
alias gs='git status --short'
alias gss='git show --word-diff=color' # See changes made