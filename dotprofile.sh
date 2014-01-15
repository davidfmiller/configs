
# misc
function __help() {

  echo '   # https://github.com/davidfmiller/dotfiles'
  echo '   r [...]  → rm [...]';
  echo '   g [...]  → git [...]';
  echo '   c [...]  → cd [...]';
  echo '   o [...]  → open [...]';
  echo '   ..       → c ..';
  echo '   ~        → c ~';
  echo '   bb [...] → bbedit [...]';
  echo '   py [...] → python [...]';
  echo '   ll [...] → ls -al [...]';
  echo '   la [...] → ls -l  [...]';
  echo '   lb [...] → launchbar [...]';
  echo '   mk [...] → mkdir [...]';

}
alias ?="__help"

# ls
function __la ()  { ls -l "$@" | awk '{$1=""; $2=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; sub("  ", " "); print}' | awk '{$1=$1}1' | grep -v "^$"; }
function __ll () { ls -al "$@" | awk '{$1=""; $2=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; sub("  ", " "); print}' | awk '{$1=$1}1' | grep -v "^$"; }
function __emoji () { python ~/Documents/git/lsemoji/lsemoji.py "$@"; } # https://github.com/davidfmiller/lsemoji

alias la='__la'
alias ll="__ll"
alias l="__emoji"


# sys commands
alias r='rm'
alias g='git'
alias desk='cd ~/Desktop; l'
alias docs='cd ~/Documents; l'

# directory nav
function __cd () { cd "$@"; __emoji; }
function __open () {
  if [ ! -n "$1" ]
  then
    open .
  else
    open "$@"
  fi
}
alias 'c'="__cd"
alias '..'="c .."
alias '~'="c ~"
alias 'o'="__open"
alias 'mk'="mkdir"

# applications
function __bb () { bbedit "$@"; }
function __py () { python "$@"; }
function __launchbar () { python ~/Documents/git/apples/launchbar "$@"; } # https://github.com/davidfmiller/apples
alias bb='__bb'
alias py='__py'
alias lb="__launchbar"

# prompt
export PS1="\n\u@\h: \w\n⚡  " #PROMPT_COMMAND='echo $UU'
