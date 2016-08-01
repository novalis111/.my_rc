if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# homebrew bash-completion
if [ $(which brew) ]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi
