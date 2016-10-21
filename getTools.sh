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

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.8.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
