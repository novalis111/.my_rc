#!/bin/bash
# modman
bash < <(wget -q --no-check-certificate -O - https://raw.github.com/colinmollenhour/modman/master/modman-installer)

# composer
# todo

# magerun
cd ~/bin
if [ -f n98-magerun.phar ]; then
    rm n98-magerun.phar
fi
wget https://files.magerun.net/n98-magerun.phar
chmod +x n98-magerun.phar
if [ ! -f magerun ]; then
    ln -s n98-magerun.phar magerun
fi
