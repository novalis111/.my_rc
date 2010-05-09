#!/bin/sh
if [ -w ~/.vim ]; then
    mv ~/.vim ~/.vim_old
fi
ln -s ~/.my_rc/.vim ~/.vim

if [ -w ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc_old
fi
ln -s ~/.my_rc/.vimrc ~/.vimrc

if [ -w ~/.screenrc ]; then
    mv ~/.screenrc ~/.screenrc_old
fi
ln -s ~/.my_rc/.screenrc ~/.screenrc

ln -s ~/.vim/colors/inkpot/colors/inkpot.vim ~/.vim/colors/inkpot.vim

exit 0
