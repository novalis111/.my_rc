if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
if [ -x ~/bin/syncTime.sh ]; then
    ~/bin/syncTime.sh
fi
if [ -d "/var/www/" ]; then
    cd /var/www/
fi
