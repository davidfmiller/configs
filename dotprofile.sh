
# https://github.com/davidfmiller/lsemoji
function __emoji () { python ~/Documents/git/lsemoji/lsemoji.py "$@"; }

# https://github.com/davidfmiller/apples
function __launchbar () { python ~/Documents/git/apples/launchbar "$@"; }

function __bb () { bbedit "$@"; }
function __py () { python "$@"; }
function __cd () { cd "$@"; __emoji; }

# ls
function __l ()  { ls -l "$@" | awk '{$1=""; $2=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; sub("  ", " "); print}' | awk '{$1=$1}1' | grep -v "^$"; }
function __ll () { ls -al "$@" | awk '{$1=""; $2=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; sub("  ", " "); print}' | awk '{$1=$1}1' | grep -v "^$"; }

alias l='__l'
alias ll="__ll"
alias lm="__emoji"


alias lb="__launchbar"

alias r='rm'
alias g='git'

# cd
alias 'c'="__cd"
alias '..'="c .."
alias '~'="c ~"


alias bb='__bb'
alias py='__py'


#PROMPT_COMMAND='echo $UU'
export PS1="\n\u@\h: \w\n⚡  "
