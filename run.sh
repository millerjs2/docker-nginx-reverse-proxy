#!/bin/sh

[ -f /run-pre.sh ] && /run-pre.sh

if [ ! -d /data/htdocs ] ; then
  mkdir -p /data/htdocs
  chown nginx:www-data /data/htdocs
fi

# put the site files in place
mv /site* /etc/nginx/sites-enabled

# make sure web server has ownership
chown -R nginx:www-data /data/htdocs

# start nginx
mkdir -p /data/logs/nginx
mkdir -p /tmp/nginx
chown nginx /tmp/nginx
nginx
