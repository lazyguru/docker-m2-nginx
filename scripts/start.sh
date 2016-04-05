#!/bin/bash
set -e

if [ -f /etc/sysconfig/nginx ]; then
    . /etc/sysconfig/nginx
fi

exec nginx -c /etc/nginx/nginx.conf -g "daemon off;"
