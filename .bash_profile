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

# Setting PATH for Python 3.6
if [ -d /Library/Frameworks/Python.framework/Versions/3.6/bin ]; then
    PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
    export PATH
fi

# miniconda
if [ -f ~/miniconda3/etc/profile.d/conda.sh ]; then
    . ~/miniconda3/etc/profile.d/conda.sh
fi

# Go Binaries
if [ -d ~/go/bin ]; then
    PATH="~/go/bin:${PATH}"
    export PATH
fi
