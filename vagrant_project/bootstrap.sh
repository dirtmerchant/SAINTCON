#!/usr/bin/env bash

# update & install
apt-get update
apt-get install -y apache2 

# point /var/www at /vagrant mount
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

# restart apache
/usr/sbin/service apache2 restart

# demo
# apt-get install -y fortune 
# /usr/games/fortune > /var/www/html/fortune.html
# /usr/bin/uptime >  /var/www/html/uptime.html
