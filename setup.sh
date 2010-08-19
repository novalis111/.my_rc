#!/bin/sh

# create in homedir by default
cd ~
# file and no symlink? rename
if [ -d .vim ] && [ ! -L .vim ]; then
    mv .vim .vim_old
fi
# else delete
rm .vim
# create symlink
ln -s .my_rc/.vim .

# repeat
if [ -f .vimrc ] && [ ! -L .vimrc ]; then
    mv .vimrc .vimrc_old
fi
rm .vimrc
ln -s .my_rc/.vimrc .

# repeat
if [ -f .screenrc ] && [ ! -L .screenrc ]; then
    mv .screenrc .screenrc_old
fi
rm .screenrc
ln -s .my_rc/.screenrc .

# repeat
if [ -f .bashrc ] && [ ! -L .bashrc ]; then
    mv .bashrc .bashrc_old
fi
rm .bashrc
ln -s .my_rc/.bashrc .

exit 0
