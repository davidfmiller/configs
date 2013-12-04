
# misc
function __help() {
#  echo ' lm';
  echo '   r  : rm';
  echo '   g  : git';
  echo '   c  : cd';
  echo '   .. : c ..';
  echo '   ~  : c ~';
  echo '   bb : bbedit';
  echo '   py : python';
  echo '   lb : launchbar';
}
alias ?='__help'

# ls
function __l ()  { ls -l "$@" | awk '{$1=""; $2=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; sub("  ", " "); print}' | awk '{$1=$1}1' | grep -v "^$"; }
function __ll () { ls -al "$@" | awk '{$1=""; $2=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; sub("  ", " "); print}' | awk '{$1=$1}1' | grep -v "^$"; }
function __emoji () { python ~/Documents/git/lsemoji/lsemoji.py "$@"; } # https://github.com/davidfmiller/lsemoji

alias l='__l'
alias ll="__ll"
alias lm="__emoji"

# sys commands
alias r='rm'
alias g='git'


# directory nav
function __cd () { cd "$@"; __emoji; }
alias 'c'="__cd"
alias '..'="c .."
alias '~'="c ~"

# applications
function __bb () { bbedit "$@"; }
function __py () { python "$@"; }
function __launchbar () { python ~/Documents/git/apples/launchbar "$@"; } # https://github.com/davidfmiller/apples
alias bb='__bb'
alias py='__py'
alias lb="__launchbar"

# prompt
export PS1="\n\u@\h: \w\n⚡  " #PROMPT_COMMAND='echo $UU'
