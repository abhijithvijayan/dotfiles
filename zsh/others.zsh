#-------------------
#   Miscellaneous
#-------------------

# Load Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# User configuration
fpath=($fpath "$HOME/.zfunctions")

# Set Spaceship/Pure ZSH as a prompt
ZSH_THEME="spaceship"
#source "$HOME/.zsh/spaceship/spaceship.zsh"
#autoload -U promptinit; promptinit
#prompt spaceship

# Google Cloud SDK setup
if [ -f "$HOME/workspace/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/workspace/google-cloud-sdk/path.zsh.inc"; fi

# Enable shell command completion for gcloud
if [ -f "$HOME/workspace/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/workspace/google-cloud-sdk/completion.zsh.inc"; fi
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

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
