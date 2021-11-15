set fish_greeting ""

set -gx TERM xterm-256color

set -gx EDITOR nvim

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# OS APP
set -gx PATH /opt/local/bin $PATH
set -gx PATH /opt/local/sbin $PATH
# ANDROID SDK 
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $ANDROID_HOME/emulator $PATH
set -gx PATH $ANDROID_HOME/tools $PATH
set -gx PATH $ANDROID_HOME/tools/bin $PATH
set -gx PATH $ANDROID_HOME/platform-tools $PATH
# MONGODB
set -gx PATH /usr/local/mongodb/bin $PATH
# NPM
set -gx PATH $HOME/.npm-global/bin $PATH
# COMPOSER
set -gx PATH $HOME/.composer/vendor/bin $PATH
# GEM
set -gx PATH $HOME/.gem/ruby/2.6.0/bin $PATH

# ALIASES
alias emulator1="~/Library/Android/sdk/emulator/emulator -avd Pixel_3a_API_30_x86"
alias emulator2="~/Library/Android/sdk/emulator/emulator -avd Pixel_3a_XL_API_26"
alias emulatorlist="~/Library/Android/sdk/emulator/emulator -avd -list-avds"
alias mongod="mongod --config /usr/local/etc/mongod.conf"
alias vi='~/nvim-osx64/bin/nvim'
alias vim='~/nvim-osx64/bin/nvim'
alias tm='tmux'
alias tma='tmux attach'
alias tmk='tmux kill-server'
alias tms='tmux source-file ~/.tmux.conf'
alias l='command clear'
alias j='z'
alias tml='tmux ls'
alias k='exa --long --git --icons --all'
alias ls='exa --long --git --icons --all'
alias lt1='exa --long --git --icons --tree -L 1'
alias lt2='exa --long --git --icons --tree -L 2'
alias lt3='exa --long --git --icons --tree -L 3'

