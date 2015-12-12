#!/bin/bash
set -e

tar cf - --one-file-system -C /usr/src/rs . | tar xf -
chown -R www-data:www-data /var/www/html
chmod -R 750 /var/www/html

if [ ! -e './config/server.yaml' ]; then
  mv ./config/server.yaml.example ./config/server.yaml
fi

exec "$@"
