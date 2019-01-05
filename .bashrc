[ -r ~/.my_rc/.my_bash ] && . ~/.my_rc/.my_bash
[ -r ~/.bash_aliases ] && . ~/.bash_aliases
[ -r ~/.my_mac_bash ] && . ~/.my_mac_bash
command -v direnv &>/dev/null && eval "$(direnv hook bash)"
