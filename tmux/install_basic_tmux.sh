#!/bin/bash

# Test brew
brew -v

if [ $? -ne 0 ]; then
    # Install brew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install tmux
brew install tmux

# Install Tmux Themepack
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

# set up
cat ~/.config_runtime/tmux/.tmux.conf > ~/.tmux.conf

echo "Installed the basic tmux configuration successfully! Enjoy :-)"
