.PHONY: InstallDocker ConfigVim InstallTmux ConfigTmux InstallNode InstallBrew InstallPm2 InstallNvm InstallYarn CloneRepo 

start: InstallNvm InstallNode InstallYarn InstallPm2 InstallBrew InstallDocker InstallTmux ConfigTmux ConfigVim
	@echo "Setup Successfully!"

InstallNvm: 
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
	# remember set PATH env

InstallNode: InstallNvm
	nvm install 8.11.1

InstallYarn: InstallNode
	npm install --global yarn

InstallPm2: InstallNode
	npm install pm2@latest -g

InstallBrew:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

InstallDocker:
	brew install docker

InstallTmux:
	brew install tmux

CloneRepo:
	git clone --depth=1 git@github.com:EvanXzj/mac-setup.git ~/.config_runtime

ConfigTmux: CloneRepo InstallTmux
	@git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
	cat ~/.config_runtime/tmux/.tmux.conf > ~/.tmux.conf

ConfigVim:
	cat ~/.config_runtime/vimrcs/basic.vim > ~/.vimrc

ConfigBash:
	cat  ~/.config_runtime/bash/.bash_profile > ~/.bash_profile
