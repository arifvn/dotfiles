#!/usr/bin/env bash

# NVIM
echo "Downloading to $HOME/ ..."

cd $HOME/
rm -vrf nvim-macos.tar.gz
curl -# -L -O https://github.com/neovim/neovim/releases/download/v0.5.1/nvim-macos.tar.gz 

echo "Extracting NVIM nvim-macos.tar.gz" 
tar zxpf nvim-macos.tar.gz

echo "Installing NVIM"

echo "alias vi='~/nvim-osx64/bin/nvim'" >> $HOME/.aliases
echo "alias vim='~/nvim-osx64/bin/nvim'" >> $HOME/.aliases

echo "Removing downloaded zip ..."
rm -rf $HOME/nvim-macos.tar.gz
