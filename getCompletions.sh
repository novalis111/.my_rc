#!/bin/bash
# git
if [ ! -d "~/.my_rc/completions" ]; then
    mkdir ~/.my_rc/completions
fi
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.my_rc/completions/git.bash
