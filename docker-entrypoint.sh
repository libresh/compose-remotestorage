#!/bin/bash
set -e

if [ ! -e '/var/www/html/README.md' ]; then
  tar cf - --one-file-system -C /usr/src/rs . | tar xf -
  chown -R www-data:www-data /var/www/html
  chmod -R 750 /var/www/html
  chmod -R 750 /var/www/html/data
fi

exec "$@"
