 export NVM_DIR="$HOME/.nvm"
 [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

 # tree
 alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

 # Setting PATH for Python 3.6
 # The original version is saved in .bash_profile.pysave
 PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
 export PATH

 # Setting PATH for GO build project [add by Evan]
 # export GOPATH="$HOME/my-projects/go-data-calc-cms"
 export PATH="$GOPATH/bin:$PATH"

 export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

 [[ -s "/Users/dwightk/.rvm/scripts/rvm" ]] && source "/Users/dwightk/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

 function parse_git_branch {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
 }
 # export PS1="🍔  \[\033[01;35m\]\u@\h:\[\033[01;34m\]\$(parse_git_branch) \[\033[01;32m\]\w \[\033[01;34m\]\n>\[\e[0m\]"
 txtblk='\e[0;30m' # Black - Regular
 txtred='\e[0;31m' # Red
 txtgrn='\e[0;32m' # Green
 txtylw='\e[0;33m' # Yellow
 txtblu='\e[0;34m' # Blue
 txtpur='\e[0;35m' # Purple
 txtcyn='\e[0;36m' # Cyan
 txtwht='\e[0;37m' # White
 bldblk='\e[1;30m' # Black - Bold
 bldred='\e[1;31m' # Red
 bldgrn='\e[1;32m' # Green
 bldylw='\e[1;33m' # Yellow
 bldblu='\e[1;34m' # Blue
 bldpur='\e[1;35m' # Purple
 bldcyn='\e[1;36m' # Cyan
 bldwht='\e[1;37m' # White
 unkblk='\e[4;30m' # Black - Underline
 undred='\e[4;31m' # Red
 undgrn='\e[4;32m' # Green
 undylw='\e[4;33m' # Yellow
 undblu='\e[4;34m' # Blue
 undpur='\e[4;35m' # Purple
 undcyn='\e[4;36m' # Cyan
 undwht='\e[4;37m' # White
 bakblk='\e[40m'   # Black - Background
 bakred='\e[41m'   # Red
 badgrn='\e[42m'   # Green
 bakylw='\e[43m'   # Yellow
 