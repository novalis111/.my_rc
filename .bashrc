[ -r ~/.my_rc/.my_bash ] && . ~/.my_rc/.my_bash
[ -r ~/.bash_aliases ] && . ~/.bash_aliases
[ -r ~/.my_mac_bash ] && . ~/.my_mac_bash
[ -r ~/miniconda3/etc/profile.d/conda.sh ] && . ~/miniconda3/etc/profile.d/conda.sh
command -v direnv &>/dev/null && eval "$(direnv hook bash)"
