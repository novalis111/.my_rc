#!/bin/bash
COMPDIR=$HOME/.my_rc/completions
if [ ! -d "$COMPDIR" ]; then
    mkdir $COMPDIR
fi

# git
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O $COMPDIR/git.bash

# docker-compose
wget https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose -O $COMPDIR/docker-compose.bash

