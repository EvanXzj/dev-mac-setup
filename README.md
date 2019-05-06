# mac-setup

mac电脑的一些常用配置

## 1. 软件

- QQ
- WeChat
- QQ Music
- Netease Music
- Telegram
- Chrome
- EverNote
- Boostnote
- Typora
- ShadowsocksX-NG-R8
- Alfred 3
- Keyboard Maestro
- SourceTree
- Vscode
- Postman
- Insomnia
- Charles
- iTerm2
- Tmux
- Virtual Box
- Vagrant
- Ngrok
- Docker
- DataGrip,
    license server: `http://jetbrains.license.laucyun.com (Lower of 2017.3); http://45.77.132.137:8000 (Lower of 2018.2)`
- Workbench
- NoSQLBooster for MongoDB
- Node
- Go
- 百度网盘
- Things
- Principle
- APP uninstaller
- Dukto
- DASH
- Ipfs
- NTFS for mac  移动硬盘拷贝东西使用
- 有道词典 英文翻译用
- 有道云笔记
- Grammarly 写英文文章用
- DropBox
- Oh-My-Zsh
- Direnv
- sublime text
- Ganache
- Minutes
- Kitematic
- GoLand
- ...

## 2. Chrome 插件

- Vimium
- ~~ImTranslator~~
- Octotree
- Momentum
- Smart Websocket Client
- OneTab
- 掘金
- Grammarly
- MetaMas
- New Tap Startup Quotes
- JSON Viewer
- Turn off lights
- Google Translation
- Save to Packet
- Adblock plus
- Lastpass
- Better Go Playground
- Checker Plus for Gmail
- SwitchyOmega
- fehelper
- NIM(Node调试器)
- sourcegraph
- Reader View
- SimpRead
- ...

## 3. Vscode 插件(和BitBucket vscode-config仓同步)

- dbaeumer.vscode-eslint
- esbenp.prettier-vscode
- CoenraadS.bracket-pair-colorizer
- PeterJausovec.vscode-docker
- mkxml.vscode-filesize
- eamodio.gitlens
- ms-vscode.go
- ipedrazas.kubernetes-snippets
- wayou.vscode-todo-highlight
- vscodevim.vim
- mikey.vscode-fileheader
- robertohuertasm.vscode-icons
- redhat.vscode-yaml
- DotJoshJohnson.xml
- vitorsalgado.vscode-glide
- editorconfig.editorconfig
- bungcip.better-toml
- wallabyjs.quokka-vscode
- juanblanco.solidity
- VS Code for Node.js - Development Pack
- jakebathman.mysql-syntax
- mikestead.dotenv
- codezombiech.gitignore
- ziyasal.vscode-open-in-github

## 4. Vim Editor Setup

> Check this [Repository][1]

```bash
# install basic vimrc version
git clone --depth=1 https://github.com/EvanXzj/mac-setup ~/.config_runtime

sh ~/.config_runtime/vimrcs/basic.sh
```

> **Manualy Install**: `just copy vimrcs/basic.vimrc content to .vimrc on your host machine`

## 5. Tmux Setup

> Check this [Repository][2]

```bash
# baisc setup
sh ~/.config_runtime/tmux/install_basic_tmux.sh

# change powerline theme if you need:
#
# source-file "${HOME}/.tmux-themepack/powerline/block/${themename}.tmuxtheme"
# # #
```

## 6. Bash Setup

## 7. Git Setup

```bash
# git config -l             查看config列表
# git config --global -e    修改全局的git config 配置

# 同步个人的conmmit 到github
# 在 [user] 下方添加以下两行
    user.name=EvanXzj
    user.email=2686465170@qq.com

# 命令别名
# 在[alias]下添加以下几行
    st = status
    chk = checkout
    cm = commit -m
    br = branch
    unstage = reset HEAD
    last = log -1
    lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
```

## 8. NPM Setup

```bash
npm set init.author.name "chuidylan"
npm set init.author.email "chuidylan@gmail.com"
npm set init.author.url "blog.chuidylan.com"
npm set init.license "MIT"
npm set init.version "1.0.0"
```

> 参考 [Blog1][3], [Blog2][4]

[1]: https://github.com/amix/vimrc
[2]: https://github.com/EvanXzj/my-tmux-conf
[3]: https://code.tutsplus.com/tutorials/how-to-customize-the-command-prompt--net-20586
[4]: https://gist.github.com/natelandau/10654137

