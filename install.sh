#!/bin/bash

sudo apt install curl git neovim tmux -y

# Download neovim config: init.vim
sh -c 'curl -fLo $HOME/.config/nvim/init.vim --create-dirs \
	     https://raw.githubusercontent.com/huichuno/vimrc/main/init.vim'

# Install neovim plugin manager
sh -c 'curl -fLo "$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Download tmux config: tmux.conf
sh -c 'curl -fLo $HOME/.config/tmux/tmux.conf --create-dirs \
       https://raw.githubusercontent.com/huichuno/vimrc/main/tmux.conf'

# Download tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo 
echo "Please follow instructions below to complete the installation:"
echo
echo 'Launch "nvim" > press <Enter> > run ":PlugInstall" command'
echo 'Run "PlugUpdate" to install or update plugins'
echo
echo 'Launch "tmux" > press "Ctrl + b + I" to install plugin'
echo

