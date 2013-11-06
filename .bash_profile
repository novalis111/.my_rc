if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
if [ -d "/var/www/" ]; then
    cd /var/www/
fi
if [ -z "$TMUX" ] && [ $TERM != "screen" ]; then
    tmux attach || tmux new
fi
