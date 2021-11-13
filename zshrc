# PLUGINS
if [[ ! -d ~/.zplug ]];then
  echo "Downloading zplug ....."
  git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "themes/robbyrussell", from:oh-my-zsh, as:theme
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# ALIASES
source ~/.dotfiles/aliases

# DISABLE COMPAUDIT WARNING ON CATALINA
ZSH_DISABLE_COMPFIX=true

# DISABLE UPDATING BREW WHEN INSTALL APP
HOMEBREW_NO_AUTO_UPDATE=1
