#!/bin/sh

# git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
# sh ~/.vim_runtime/install_basic_vimrc.sh

cat ~/.config_runtime/vimrcs/basic.vimrc > ~/.vimrc

echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
