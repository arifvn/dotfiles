# ------------------------------------
#
# Intalling ZSH Plugin
#
# ------------------------------------

# Path to Oh My Zsh Installation
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  macos
  copydir
  autojump
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
  zsh-history-substring-search
)

# Enable auto completions
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# Enable enhancd plugin
source ~/.zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh

   if ! zplug check; then
      echo "\nIntalling enhancd ...\n"
      zplug install
   fi
zplug load

# ------------------------------------
#
# Sourcing starship prompt 
#
# ------------------------------------

export STARSHIP_CONFIG=~/.config/starship/config.toml
eval "$(starship init zsh)"

# ------------------------------------
#
# Sourcing aliases 
#
# ------------------------------------

source ~/.dotfiles/aliases

