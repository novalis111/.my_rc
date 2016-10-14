#!/bin/bash
# modman
bash < <(wget -q --no-check-certificate -O - https://raw.github.com/colinmollenhour/modman/master/modman-installer)

# composer
# todo

# magerun
cd ~/bin
wget https://files.magerun.net/n98-magerun.phar
chmod +x n98-magerun.phar
ln -s n98-magerun.phar magerun
