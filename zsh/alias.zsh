#-------------------
#      Aliases 
#   (run `alias`)
#-------------------

#-------------------
#     General
#-------------------
# Open .zshrc to be edited in VS Code
alias config='code ~/.zshrc'
# Re-run source command on .zshrc to update current terminal session with new settings
alias update='source ~/.zshrc'
# View files/folder alias using colorsls (https://github.com/athityakumar/colorls)
alias l='colorls --group-directories-first --almost-all'
alias ls='colorls'
alias ll='colorls --group-directories-first --almost-all --long'
# Clear terminal
alias c='clear'
alias path='echo -e ${PATH//:/\\n}'

#-------------------
#       Date
#-------------------
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

#-------------------
#      Python
#-------------------
alias p='python3'
alias p2='python2'
alias pip='pip3'
alias pinstall='pipenv install'
alias penv='pipenv --venv'
alias pi=pinstall
alias pshell='pipenv shell'
alias pdelenv='pipenv --rm'

#-------------------
#      Docker
#-------------------
alias cr='docker'
alias cs='docker ps'
alias cu='docker-compose up'

#-------------------
#       Node
#-------------------
alias no='node'

#-------------------
#       Yarn
#-------------------
alias yi='yarn install'
alias ja='yarn add'
alias jt='yarn test'
alias jr='yarn run'
alias je='yarn remove'
alias js='yarn start'
alias jv='yarn run dev'
alias jg='yarn global add'
alias jd='yarn add --dev'

#-------------------
#       Nginx
#-------------------
alias ngup='sudo nginx'
alias ngdown='sudo nginx -s stop'
alias ngre='sudo nginx -s stop && sudo nginx'
alias nglog='tail -f /usr/local/var/log/nginx/access.log'
alias ngerr='tail -f /usr/local/var/log/nginx/error.log'
alias nginxreload='sudo /usr/local/nginx/sbin/nginx -s reload'
alias nginxtest='sudo /usr/local/nginx/sbin/nginx -t'

#-------------------
# easier navigation
#-------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias doc='cd ~/Documents/'
alias dz='cd ~/.dotfiles'
alias de='cd ~/Desktop'
alias dq='cd ~/Downloads'

#-------------------
#    Git Aliases
#-------------------
alias gi='git init'
alias ga='git add'
alias g.='git add .'
alias gp='git pull'
alias pull='git pull'
alias push='git push'
alias gn='git clone'
alias grao='git remote add origin'
alias gb='git checkout -b'
alias gr='git reset --hard'
alias g:='git push -u origin master'
alias ggf='git push -f'
alias gj='open `git config remote.origin.url`'
alias gl="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glb='git log --oneline --decorate --graph --all'
alias gpm='git push origin master'
alias grl='git reset --hard && git clean -df' # Reset to exact state as last commit
# Undo your last commit, but don't throw away your changes
alias greset='git reset --soft HEAD^'
alias gd='git diff'
alias gds='git diff --staged'
alias gdn='git diff --name-only'
alias gs='git status --short' # Git Status
alias gss='git show --word-diff=color' # See changes made
alias ungit="find . -name '.git' -exec rm -rf {} \;" # Remove git from a project

#-------------------
#  Linux Utilities
#-------------------
alias ports='netstat -tulanp' # show all open ports

# Control firewall (iptables) output
alias ipt='sudo /sbin/iptables' # shortcut for iptables and pass it via sudo
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist
alias flushdns='sudo systemd-resolve --flush-cache'

alias cpu='top -o cpu'   # CPU
alias mem='top -o rsize' # Memory
alias meminfo='free -h -l -t'
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
## Get server cpu info ##
alias cpuinfo='lscpu'

# general
alias pb='pbcopy'
alias te='tree'
alias op='open'
alias g='git' # Wrapper over git
alias _='sudo'
alias du='du -sh * | sort'
alias df='df -H'
alias eo='echo'
alias d='cd'
alias lg='ls | grep'
alias m='mkdir'
alias mkdir='mkdir -pv' # Create parent directories on demand
alias q='exit'
alias screen='screenfetch'
alias mx='chmod +x'
alias rr='rm -rf'
alias apt-get='sudo apt-get'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'

# Add safety nets
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
# become root #
alias root='sudo -i'
alias su='sudo -i'