# ---------------------------
# BASIC CONFIG
# ---------------------------

set -gx TERM xterm-256color

set -gx EDITOR nvim

# Get rid of default fish greeting message 
set fish_greeting

# Themes default
set fish_color_command green
set fish_color_search_match --background='#cb12ff'

# ---------------------------
# PATHS 
# ---------------------------

# Os app
set -gx PATH /opt/local/bin $PATH
set -gx PATH /opt/local/sbin $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/local/sbin $PATH

# Android SDK 
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $ANDROID_HOME/emulator $PATH
set -gx PATH $ANDROID_HOME/tools $PATH
set -gx PATH $ANDROID_HOME/tools/bin $PATH
set -gx PATH $ANDROID_HOME/platform-tools $PATH

# Mongodb
set -gx PATH /usr/local/mongodb/bin $PATH

# NPM
set -gx PATH $HOME/.npm-global/bin $PATH

# Composer
set -gx PATH $HOME/.composer/vendor/bin $PATH

# Gem
set -gx PATH $HOME/.gem/ruby/2.6.0/bin $PATH

# Nvim
set -gx PATH $HOME/nvim-osx64/bin $PATH

# ---------------------------
# ALIASES 
# ---------------------------

alias emulator1="~/Library/Android/sdk/emulator/emulator -avd Pixel_3a_API_30_x86"
alias emulator2="~/Library/Android/sdk/emulator/emulator -avd Pixel_3a_XL_API_26"
alias emulatorlist="~/Library/Android/sdk/emulator/emulator -avd -list-avds"

alias mongod="mongod --config /usr/local/etc/mongod.conf"

alias fi='nvim'
alias vi='nvim'
alias vim='nvim'

alias tm='tmux'
alias tma='tmux attach'
alias tmk='tmux kill-server'
alias tms='tmux source-file ~/.tmux.conf'
alias tml='tmux ls'

alias md='command mkdir'

alias l='command clear'

alias j='z'
alias kt='command sh ~/.kitty.sh'
alias it='command sh ~/.iterm.sh'
alias chrome='command sh ~/.chrome.sh'
alias ala='command sh ~/.alacritty.sh'

alias k='exa --long --git --icons --all'
alias km='exa --long --git --icons --all --sort=modified'
alias ls='exa --long --git --icons --all'
alias lt='exa --long --git --icons --tree -L 2'
alias lt1='exa --long --git --icons --tree -L 3'
alias lt2='exa --long --git --icons --tree -L 4'
alias ld='exa --no-permissions --icons --git-ignore --tree --level=2 -I "node_modules"'
alias ld1='exa --no-permissions --icons --git-ignore --tree --level=3 -I "node_modules"'
alias ld2='exa --no-permissions --icons --git-ignore --tree --level=4 -I "node_modules"'
