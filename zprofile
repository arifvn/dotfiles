# App default PATH
export PATH="/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH"

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Mongodb
export PATH="$PATH:/usr/local/mongodb/bin:$PATH"

# Npm
export PATH=~/.npm-global/bin:$PATH

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Gem
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

# Nvim
export PATH="$HOME/nvim-osx64/bin/:$PATH"

# Term
export TERM=xterm-256color

# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
