#!/bin/bash

sudo apt install neovim git -y

# download init.vim
sh -c 'curl -fLo $HOME/.config/nvim/init.vim --create-dirs \
	     https://raw.githubusercontent.com/huichuno/vimrc/main/init.vim'

# install plugin manager

sh -c 'curl -fLo "$HOME/.local/share}"/nvim/site/autoload/plug.vim \
       --create-dirs \
	     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo 
echo 'Launch "nvim" > press <Enter> > run ":PlugInstall" command'
echo 'Run "PlugUpdate" to install or update plugins'
echo

