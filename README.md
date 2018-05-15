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
- Charles
- iTerm2
- Tmux
- Virtual Box
- Vagrant
- Ngrok
- Docker
- DataGrip
- NoSQLBooster for MongoDB
- Node
- Go
- 百度网盘
- Things 
- Principle
- APP uninstaller
- Dukto
- ...

## 2. Chrome 插件

- Vimium
- ImTranslator
- Octotree
- Momentum
- Smart Websocket Client
- OneTab
- 掘金
- Grammarly
- ...

## 3. Vscod 插件 (和BitBucket vscode-config仓同步)

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

## 4. Vim Editor Setup

> Check this [Repository][1]

```shell
# install basic vimrc version
git clone --depth=1 https://github.com/EvanXzj/mac-setup ~/.config_runtime
sh ~/.config_runtime/vimrcs/basic.sh
```

> **Manualy Install**: `just copy vimrcs/basic.vimrc content to .vimrc on your host machine`

## 5. Tmux Setup

> Check this [Repository][2]

```shell
# baisc setup
sh ~/.config_runtime/tmux/install_basic_tmux.sh

# change powerline theme if you need: 
#
# source-file "${HOME}/.tmux-themepack/powerline/block/${themename}.tmuxtheme"
# # #
```

## 6. Bash Setup

> 参考 [Blog1][3], [Blog2][4]

[1]: https://github.com/amix/vimrc
[2]: https://github.com/EvanXzj/my-tmux-conf
[3]: https://code.tutsplus.com/tutorials/how-to-customize-the-command-prompt--net-20586
[4]: https://gist.github.com/natelandau/10654137