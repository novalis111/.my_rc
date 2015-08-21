#!/bin/bash -e
cd ~
if [[ -d ~/.my_rc ]]; then
    rm -rf ~/.my_rc
fi
for f in ".vim" ".vimrc" ".tmux.conf" ".bash_aliases" ".bash_profile"
do
    [[ -L ~/$f ]] && rm ~/$f
done
[ -r ~/.bashrc ] && . ~/.bashrc
echo "Removed."
