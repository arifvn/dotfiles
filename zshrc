if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/hannaharif/.oh-my-zsh"

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
source $ZSH/oh-my-zsh.sh

if [[ ! -d ~/.zplug ]];then
  echo "cloning zplug ..."
  git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh
   zplug "romkatv/powerlevel10k", as:theme, depth:1
   zplug "b4b4r07/enhancd", use:init.sh

   if ! zplug check --verbose; then
       printf "install? [y/n]: "
       if read -q; then
           echo; zplug install
       fi
   fi
zplug load

source ~/.dotfiles/aliases

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
