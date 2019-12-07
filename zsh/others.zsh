#-------------------
#   Miscellaneous
#-------------------

# User configuration
fpath=($fpath "/home/${USER}/.zfunctions")

# Set Spaceship/Pure ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Add colors to terminal commands (green command means that the command is valid)
source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"