#!/bin/sh
# set -e

# Install Xcode first - https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12
# Install Xcode command line tools.
xcode-select --install

#########################################################################
#                     Install homebrew                                  #
#########################################################################
brew -v

# install if it not installed
if [ $? -ne 0 ]; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install cask
brew tap caskroom/cask
brew install brew-cask

#########################################################################
#                     Install GUI program                               #
#     vscode, chrome, typora, iTerm2, docker, virtualbox, datagrip      #
#     sequel-pro, sourcetree, grammarly, slack, telegram, atom, ganache #
#########################################################################
brew cask install visual-studio-code
brew cask install google-chrome
brew cask install typora
brew cask install iterm2
brew cask install docker       # Install Docker
brew cask install virtualbox
brew cask install sequel-pro
brew cask install datagrip
brew cask install sourcetree
brew cask install grammarly
brew cask install slack
brew cask install telegram
brew cask install atom
brew cask install ganache
brew cask install nosqlbooster-for-mongodb
brwe cask install sublime-text

#########################################################################
#                    Install System Tools                               #
#########################################################################
brew install git
brew install tree
brew install htop
brew install fzf
brew install hd
brew install bat
brew install diff-so-fancy
brew install ncdu
brew install hugo
brew install tmux
brew install autojump
brew install onefetch
brew tap ethereum/ethereum
brew install ethereum
brew install golang
brew install kubectl
brew install minikube
brew install direnv

#############
# Setup Git
#############
git config --global user.name EvanXzj
git config --global user.email 2686465170@qq.com
git config --global alias.st status
git config --global alias.chk checkout
git config --global alias.br branch
git config --global alias.unstage "reset HEAD"
git config --global alias.last "log -1"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#############
# SSH-keygen
#############
ssh-keygen
pbcopy < ~/.ssh/id_rsa.pub

### ZSH replacing shell.
brew install zsh
# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -Lo "$HOME/.zshrc" https://raw.githubusercontent.com/EvanXzj/dev-mac-setup/master/zsh/.zshrc

###
### config direnv
###
echo 'eval "$(direnv hook zsh)"' >> "$HOME/.zshrc"

### setup tmux
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
curl -Lo "$HOME/.tmux.conf" https://raw.githubusercontent.com/EvanXzj/dev-mac-setup/master/tmux/.tmux.conf

### setup vim
curl -Lo "$HOME/.vimrc" https://raw.githubusercontent.com/EvanXzj/dev-mac-setup/master/vimrcs/basic.vimrc

# All done with Homebrew.
brew update && brew upgrade && brew cleanup && brew cask cleanup

### Install Node
# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
# install newest lts node
nvm install (nvm ls-remote --lts |  tail -n 1 | awk '{ print $1}')
# install verdaccio, yarn, pm2...
npm install -g verdaccio yarn pm2@latest tldr truffle
# npm init config
npm set init.author.name "EvanXzj"
npm set init.author.email "2686465170@qq.com"
npm set init.author.url "blog.chuidylan.com"
npm set init.license "MIT"
npm set init.version "1.0.0"

#### chsh to zsh and source .zshrc
#### please becare for $USER, plugins missing problem
### ref: https://keyholesoftware.com/2015/05/04/zsh/
chsh -s zsh
source "$HOME/.zshrc"


# Done.
echo "All Done. Your SSH Key is on the clipboard, ready for pasting into Github"
