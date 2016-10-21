#!/bin/bash
COMPDIR=$HOME/.my_rc/completions
if [ ! -d "$COMPDIR" ]; then
    mkdir $COMPDIR
fi

# git
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O $COMPDIR/git.bash
