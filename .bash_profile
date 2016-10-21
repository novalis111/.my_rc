if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

COMPDIR=$HOME/.my_rc/completions

# homebrew completion
if [ $(command -v brew 2>&1) ]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

# git completion
if [ $(command -v git 2>&1) ]; then
    if [ -f $COMPDIR/git.bash ]; then
        . $COMPDIR/git.bash
    fi
fi

# docker-compose completion
if [ $(command -v docker-compose 2>&1) ]; then
    if [ -f $COMPDIR/docker-compose.bash ]; then
        . $COMPDIR/docker-compose.bash
    fi
fi
