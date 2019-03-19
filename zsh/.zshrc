# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# This loads nvm 
export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# This load Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

####### doesn't work!!!!#####################
# pure theme configuration
# for more information please see: https://github.com/sindresorhus/pure#getting-started
# autoload -U promptinit; promptinit
# prompt pure

# Path to your oh-my-zsh installation.
export ZSH="/Users/zhijian/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="igeek"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias c='clear'                             # c:            Clear terminal display
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias qfind="find . -name "                 # qfind:    Quickly search for file

# env path manage package direnv setup
eval "$(direnv hook zsh)"

##################################################################################################
#################################  prepare programing env ########################################
##################################################################################################
function prepare() {
	echo '@1. prepeard editorconfig config'
	curl -sL https://raw.githubusercontent.com/cheerfyt/dotfile/master/editor/editorconfig > .editorconfig

	echo '@2. prepeard folder'
	result=${PWD##*/}
	echo "### $result" | tee README.md
}

function _go() {
	folder=${PWD##*/}
	mkdir -p cmd/${folder}

	date=`date "+%Y-%m-%d %H:%M:%S"`

	cat > cmd/${folder}/${folder}.go << __EOF__
// $(whoami) @ ${date} create this file

package main

import (
	"fmt"
)

func main() {
	fmt.Println("hello, ${folder}")
}

__EOF__

	glide init --non-interactive

	cat > Makefile << __EOF__
##### ${folder}
all:run

run:
	@go run cmd/${folder}/${folder}.go

build:
	@go build -o bin/${folder} cmd/${folder}/${folder}.go
__EOF__
}

function _node() {
	npm init --yes
	echo 'module.exports = {}' > index.js
}

function ready() {
	echo "prepare $1 env !!!"

	case $1 in
		Golang);&
		golang);&
		go)_go;;

		Node);&
		node);&
		ne) _node;;

		*) echo "nothing";
	esac

	content=`curl -sL https://www.gitignore.io/api/$1`
	err=`echo $content | grep ERROR`
	[[ -z $err ]] && echo "Got ignore content"
	echo $content | tee .gitignore

	echo "ready $1 env"

	prepare
}

# node project init
function node-init {
	npx license $(npm get init.license) -o "$(npm get init.author.name)" > LICENSE
	npx gitignore node
	npx covgen "$(npm get init.author.email)"
	npm init -y
}

# auto start a tmux session
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
