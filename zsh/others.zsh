#-------------------
#   Miscellaneous
#-------------------

# User configuration
fpath=($fpath "$HOME/.zfunctions")

# Set Spaceship/Pure ZSH as a prompt
source "$HOME/.zsh/spaceship/spaceship.zsh"
autoload -U promptinit; promptinit
prompt spaceship

# Activate zsh-autosuggestions plugin
source /usr/local/share/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add colors to terminal commands (green command means that the command is valid)
source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Anaconda setup
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/${USER}/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/${USER}/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/${USER}/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/${USER}/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

# pipenv auto completion
# eval "$(pipenv --completion)"
