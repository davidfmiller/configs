
alias '~'="cd ~"
alias '..'="cd .."
alias l="ls -l | awk '{print \$NF}' | sed -e '1d'"
alias ll="ls -al"
export PS1="\n\h: \w\n⚡  "
