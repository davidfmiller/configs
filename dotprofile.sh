
function __l () {  ls -l | awk '{$1=""; $2=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; sub("  ", " "); print}' | awk '{$1=$1}1' | grep -v "^$"; }
function __bb () { bbedit "$@"; }

alias l='__l'
alias '~'="cd ~;l"
alias '..'="cd ..;l"
alias ll="ls -al"
alias 'bb'='__bb'

export PS1="\n\h: \w\n⚡  "
