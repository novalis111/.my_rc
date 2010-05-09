#!/bin/sh
cd ~
if [ -d .vim ] && [ ! -L .vim ]; then
    mv .vim .vim_old
fi
rm .vim
ln -s .my_rc/.vim .

if [ -f .vimrc ] && [ ! -L .vimrc ]; then
    mv .vimrc .vimrc_old
fi
rm .vimrc
ln -s .my_rc/.vimrc .

if [ -f .screenrc ] && [ ! -L .screenrc ]; then
    mv .screenrc .screenrc_old
fi
rm .screenrc
ln -s .my_rc/.screenrc .

exit 0
