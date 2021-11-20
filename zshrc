# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ------------------------------------
#
# Intalling ZSH Plugin
#
# ------------------------------------

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

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

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

source ~/.zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh

   if ! zplug check --verbose; then
       printf "install? [y/n]: "
       if read -q; then
           echo; zplug install
       fi
   fi
zplug load

# ------------------------------------
#
# Sourcing aliases 
#
# ------------------------------------

source ~/.dotfiles/aliases

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
