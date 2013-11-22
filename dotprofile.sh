
function __l () {  ls -l "$@"  | awk '{print $NF}' | sed -e '1d'; }
function __bb () { bbedit "$@"; }

alias l='__l'
alias '~'="cd ~;l"
alias '..'="cd ..;l"
alias ll="ls -al"
alias 'bb'='__bb'

export PS1="\n\h: \w\n⚡  "
