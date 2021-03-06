#!/bin/bash -e
git --version 2>&1 >/dev/null
GIT_IS_AVAILABLE=$?
if [ ! $GIT_IS_AVAILABLE -eq 0 ]; then
    echo "git not found"
    exit 1
fi
cd ~
if [[ ! -d ~/.my_rc ]]; then
    git clone https://github.com/novalis111/.my_rc.git ~/.my_rc
fi
for f in ".vim" ".vimrc" ".bash_aliases" ".bash_profile"
do
    [[ ! -L ~/$f ]] && ln -s ~/.my_rc/$f ~/ || echo "$f exists, skipped"
done
[[ ! -d ~/.vim/bundle/vim-airline ]] && git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
[[ ! -d ~/.vim/bundle/vim-airline-themes ]] && git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
[[ ! -f ~/.my_rc/z.sh && ! -d ~/.my_rc/z ]] && git clone https://github.com/rupa/z.git ~/.my_rc/z
[[ ! -f ~/.direnvrc ]] && ln -s ~/.my_rc/.direnvrc ~/.direnvrc
[[ ! -d ~/.my_rc/.tmux-conf ]] && git clone https://github.com/novalis111/tmux-config.git ~/.my_rc/.tmux-conf && bash ~/.my_rc/.tmux-conf/install.sh
[[ -d ~/.my_rc/.tmux-conf ]] && git -C ~/.my_rc/.tmux-conf pull && bash ~/.my_rc/.tmux-conf/install.sh
if ! grep -q '.my_bash' ~/.bashrc; then
    echo "[ -r ~/.my_rc/.my_bash ] && . ~/.my_rc/.my_bash" >> ~/.bashrc
fi
if ! grep -q '.bash_aliases' ~/.bashrc; then
    echo "[ -r ~/.bash_aliases ] && . ~/.bash_aliases" >> ~/.bashrc
fi
if ! grep -q 'direnv' ~/.bashrc; then
    echo 'command -v direnv &>/dev/null && eval "$(direnv hook bash)"' >> ~/.bashrc
fi
echo "All done, 'source ~/.bashrc' to apply changes."
