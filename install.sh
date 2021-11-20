#!/usr/bin/env bash

# ------------------------------------------ 
#
# TASKS
# - Install NVIM 
# - Make directory for VIM-PLUG
# - Intall VIM-PLUG for managing NVIM plugin
# - Set ZSH as default shell
# - Install OH MY ZSH for managing zsh plugin
# - Install ZSH POWERLEVEL10K theme
# - Install ZSH Autosuggestions 
# - Install ZSH Autocompletions 
# - Install ZSH Syntax Hightlighting 
# - Install ZSH History Substring 
# - Install ZPLUG for for installing ZSH Enhancd 
# - Deleteing default .zshrc .zprofile .aliases
# - Intall RCM to update .zshrc .zprofile .aliases from my .dotfiles/ 
#
# ------------------------------------------ 

# Install NVIM if it's not already installed 
if [[ -f "$HOME/nvim-osx64/bin/nvim" ]]; then
    echo "\nNEOVIM is already installed, skipping ..."
else
    echo "\nInstalling NEOVIM ..."
    curl -fLo "$HOME/" https://github.com/neovim/neovim/releases/download/v0.5.1/nvim-macos.tar.gz 
    tar zxpf $HOME/nvim-macos.tar.gz -C $HOME/ 
    rm -rf $HOME/nvim-macos.tar.gz
fi

# Make autoload directory Plug
[[ ! -d "$HOME/.local/share/nvim/site/autoload/" ]] && mkdir -p "$HOME/.local/share/nvim/site/autoload/"

# Install VIM-Plug if it's not already installed
if [[ -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]]; then
    echo "\nVIM-Plug is already installed, skipping ..."
else
    echo "\nInstalling VIM-Plug ..."
    curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Set ZSH as default Shell
# Acctually this is not neccecary as Catalina has already has it on it's own
if [[ $SHELL != *"zsh" ]]; then
    if [[ -f "$(which zsh)" ]]; then
        echo "\nChanging shell to zsh, please insert your password"
        chsh -s /usr/bin/zsh
    fi
else 
    echo "\nZSH is your default Shell ..."
fi

# Install Oh-My-Zsh  
if [[ -d "$HOME/.oh-my-zsh" ]]; then
	echo "\nOh My Zsh already installed, skipping ..."
else
	echo "\nInstalling Oh My Zsh ..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install Powerlevel10k zsh theme 
if [[ -d "$HOME/.oh-my-zsh/themes/powerlevel10k" ]]; then
	echo "\nPowerlevel10k already installed, skipping ..."
else
	echo "\nInstalling Powerlevel10k ..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/themes/powerlevel10k
fi

# Install Auto Suggestions 
if [[ -d $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]];then
	echo "\nAutosuggestions already installed, skipping ..."
else
  echo "\nIntalling Autosuggestions ..."
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Install Auto Completions 
if [[ -d $HOME/.oh-my-zsh/custom/plugins/zsh-completions ]];then
	echo "\nAutocompletions already installed, skipping ..."
else
  echo "\nIntalling Autocompletions ..."
  git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=$HOME/.oh-my-zsh/custom}/plugins/zsh-completions
fi

# Install Syntax Hightlighting
if [[ -d $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]];then
	echo "\nSyntax Hightlighting already installed, skipping ..."
else
  echo "\nIntalling Syntax Hightlighting ..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# Install Zsh History
if [[ -d $HOME/.oh-my-zsh/custom/plugins/zsh-history-substring-search ]];then
	echo "\nZsh History already installed, skipping ..."
else
  echo "\nIntalling Zsh History ..."
  git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
fi

# Install Zplug for Install enchancd 
if [[ -d $HOME/.zplug ]];then
	echo "\nZplug already installed, skipping ..."
else
  echo "\nIntalling Zplug ..."
  git clone https://github.com/zplug/zplug $HOME/.zplug
fi

# Deleteing default generated .zshrc and .zprofile file 
if [[ -f $HOME/.zshrc ]] || [[ -f $HOME/.zprofile ]] || [[ -f $HOME/.aliases ]]; then
	echo "\nDeleteing default .zshrc .zprofile .aliases files ..."
fi

# Install rcm to restore all [dot]files from my own .dotfiles/ 
if ! [[ -x "$(command -v rcup)" ]]; then
	echo "\nRCM already installed, skipping ..."
else
  echo "\nIntalling RCM ..."
  HOMEBREW_NO_AUTO_UPDATE=1 brew install rcm 
fi

echo "\n\nIntalling has been DONE. Please do the followings: \n[1] Run 'rcup' to restore your .dotfiles\n[2] Restart terminal\n[3] If powerlevel10k prompt is shown make sure you choose 'off' in the instant prompt menu. So you can continue to the next process\n[4] Restart terminal again to install enhancd\n\n"
