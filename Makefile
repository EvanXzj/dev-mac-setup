.PHONY: InstallDocker ConfigVim InstallTmux ConfigTmux InstallNode InstallBrew InstallPm2 InstallNvm InstallYarn 

start: 
	@echo "Setup Successfully!"

InstallBrew: 
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

InstallNvm: 
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
	# remember set PATH env

InstallNode: InstallNvm
	nvm install 8.11.1

InstallYarn: InstallNode
	npm install --global yarn

InstallPm2: 
	npm install pm2@latest -g

InstallTmux: 
	brew install tmux

InstallDocker:
	brew install docker

ConfigTmux: InstallTmux
	cat ~/.config_runtime/tmux/.tmux.conf > ~/.tmux.conf

ConfigVim: 
	cat ~/.config_runtime/vimrcs/basic.vim > ~/.vimrc

