#!/usr/bin/env bash

# ------------------------------------------ 
#
# TASKS
# 1. Install NVIM 
# 2. Intall VIM-Plug
# 3. Set ZSH as default SHELL
# 4. Install Oh My Zsh
# 5. Install Powerlevel10k theme 
#
# ------------------------------------------ 

# Install NVIM if it's not already installed 
# ------------------------------------------ 
if [[ -f "$HOME/nvim-osx64/bin/nvim" ]]; then
    echo "NEOVIM is already installed, skipping"
else
    echo "Installing NEOVIM"
    curl -fLo "$HOME/" https://github.com/neovim/neovim/releases/download/v0.5.1/nvim-macos.tar.gz 
    tar zxpf $HOME/nvim-macos.tar.gz -C $HOME/ 
    rm -rf $HOME/nvim-macos.tar.gz
fi

# Make autoload directory Plug
# ------------------------------------------ 
[[ ! -d "$HOME/.local/share/nvim/site/autoload/" ]] && mkdir -p "$HOME/.local/share/nvim/site/autoload/"

# Install VIM-Plug if it's not already installed
# ------------------------------------------ 
if [[ -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]]; then
    echo "VIM-Plug is already installed, skipping"
else
    echo "Installing VIM-Plug"
    curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Set ZSH as default Shell
# Acctually this is not neccecary as Catalina has already has it on it's own
# ------------------------------------------ 
if [[ $SHELL != *"zsh" ]]; then
    if [[ -f "$(which zsh)" ]]; then
        echo "Changing shell to zsh, please insert your password"
        chsh -s /usr/bin/zsh
    fi
else 
    echo "ZSH is your default Shell"
fi

# Install Oh-My-Zsh  
# ------------------------------------------ 
if [[ -d "$HOME/.oh-my-zsh" ]]; then
	echo "Oh My Zsh already installed, skipping"
else
	echo "Installing Oh My Zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install Powerlevel10k zsh theme 
# ------------------------------------------ 
if [[ -d "$HOME/.oh-my-zsh/themes/powerlevel10k" ]]; then
	echo "Powerlevel10k already installed, skipping"
else
	echo "Installing Powerlevel10k"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/themes/powerlevel10k
fi

echo "Intalling has been DONE. Please restart terminal!"
