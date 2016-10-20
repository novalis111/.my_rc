if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# homebrew completion
if [ $(command -v brew 2>&1) ]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

# git completion
if [ $(command -v git 2>&1) ]; then
    if [ -f ~/.my_rc/completions/git.bash ]; then
        . ~/.my_rc/completions/git.bash
    fi
fi
