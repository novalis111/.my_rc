if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
if [ -x ~/bin/syncTime.sh ]; then
    ~/bin/syncTime.sh
fi
if [ -d "/var/www/" ]; then
    cd /var/www/
fi
if [ -z "$TMUX" ] && [ $TERM != "screen" ]; then
    tmux attach || tmux new
fi
