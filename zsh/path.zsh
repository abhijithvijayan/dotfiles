#-------------------
# PATH Manipulations
#-------------------

# Flutter
export PATH="$PATH:$HOME/flutter/bin"

# Webstorm
export PATH="$PATH:$HOME/Webstorm/bin"

# Android Studio
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Postgresql for macOS
export PATH="/usr/local/opt/postgresql@12/bin:$PATH"

# Chrome web driver
export PATH=$PATH:/usr/local/share/

# Ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Allow RubyGems to be executed
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to homebrew
export PATH=/opt/homebrew/bin:$PATH

