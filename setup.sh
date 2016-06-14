#!/bin/bash -e
git --version 2>&1 >/dev/null
GIT_IS_AVAILABLE=$?
if [ ! $GIT_IS_AVAILABLE -eq 0 ]; then
    echo "git not found"
    exit 1
fi
cd ~
if [[ ! -d ~/.my_rc ]]; then
    git clone git://github.com/novalis111/.my_rc.git ~/.my_rc
fi
for f in ".vim" ".vimrc" ".tmux.conf" ".bash_aliases" ".bash_profile"
do
    [[ ! -L ~/$f ]] && ln -s ~/.my_rc/$f ~/ || echo "$f exists, skipped"
done
[[ ! -d ~/.vim/bundle/vim-airline ]] && git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
[[ ! -d ~/.vim/bundle/vim-airline-themes ]] && git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
if ! grep -q '.my_bash' ~/.bashrc; then
    echo "[ -r ~/.my_rc/.my_bash ] && . ~/.my_rc/.my_bash" >> ~/.bashrc
fi
if ! grep -q '.bash_aliases' ~/.bashrc; then
    echo "[ -r ~/.bash_aliases ] && . ~/.bash_aliases" >> ~/.bashrc
fi
echo "All done, 'source ~/.bashrc' to apply changes."
