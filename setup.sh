#!/bin/bash
set -e
cd ~
# git clone git://github.com/novalis111/.my_rc.git ~/.my_rc
ln -s ~/.my_rc/.vim ~/
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
ln -s ~/.my_rc/.vimrc ~/
ln -s ~/.my_rc/.tmux.conf ~/
ln -s ~/.bash_aliases ~/
