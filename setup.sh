#!/bin/sh
if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim_old
fi
rm ~/.vim
ln -s ~/.my_rc/.vim ~/.vim

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc_old
fi
rm ~/.vimrc
ln -s ~/.my_rc/.vimrc ~/.vimrc

if [ -f ~/.screenrc ]; then
    mv ~/.screenrc ~/.screenrc_old
fi
rm ~/.screenrc
ln -s ~/.my_rc/.screenrc ~/.screenrc

ln -s ~/.vim/colors/inkpot/colors/inkpot.vim ~/.vim/colors/inkpot.vim

exit 0
