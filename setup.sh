#!/bin/bash -e
cd ~
# git clone git://github.com/novalis111/.my_rc.git ~/.my_rc
[[ ! -L ~/.vim ]] && ln -s ~/.my_rc/.vim ~/
[[ ! -d ~/.vim/bundle/vim-airline ]] && git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
[[ ! -L ~/.vimrc ]] && ln -s ~/.my_rc/.vimrc ~/
[[ ! -L ~/.tmux.conf ]] && ln -s ~/.my_rc/.tmux.conf ~/
[[ ! -L ~/.bash_aliases ]] && ln -s ~/.my_rc/.bash_aliases ~/
echo "All done."
