
function __l ()  {  ls -l "$@" | awk '{$1=""; $2=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; sub("  ", " "); print}' | awk '{$1=$1}1' | grep -v "^$"; }
function __ll () {  ls -al "$@" | awk '{$1=""; $2=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; sub("  ", " "); print}' | awk '{$1=$1}1' | grep -v "^$"; }
function __bb () { bbedit "$@"; }
function __py () { python "$@"; }


alias l='__l'
alias ll="__ll"
alias '~'="cd ~;l"
alias '..'="cd ..;l"
alias bb='__bb'
alias py='__py'

export PS1="\n\h: \w\n⚡  "
