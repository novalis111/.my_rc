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

# repeat for vim
if [ -f .vimrc ] && [ ! -L .vimrc ]; then
    mv .vimrc .vimrc_old
fi
rm .vimrc
ln -s .my_rc/.vimrc .

# repeat for screen
if [ -f .screenrc ] && [ ! -L .screenrc ]; then
    mv .screenrc .screenrc_old
fi
rm .screenrc
ln -s .my_rc/.screenrc .

# repeat for tmux
if [ -f .tmux.conf ] && [ ! -L .tmux.conf ]; then
    mv .tmux.conf .tmux.conf_old
fi
rm .tmux.conf
ln -s .my_rc/.tmux.conf .

# repeat for bashrc
if [ -f .bashrc ] && [ ! -L .bashrc ]; then
    mv .bashrc .bashrc_old
elif [ -L .bashrc ]; then
    rm .bashrc
fi
ln -s .my_rc/.bashrc .

# repeat for bash profile
if [ -f .bash_profile ] && [ ! -L .bash_profile ]; then
    mv .bash_profile .bash_profile_old
fi
rm .bash_profile
ln -s .my_rc/.bash_profile .

exit 0
