FROM php:5.6-apache

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y \
      libcurl4-openssl-dev \
      libsqlite3-dev \
      xz-utils \
      libapache2-mod-xsendfile \
 && rm -rf /var/lib/apt/lists/*

# https://doc.owncloud.org/server/8.1/admin_manual/installation/source_installation.html#prerequisites
RUN docker-php-ext-install curl pdo_sqlite mbstring

VOLUME /var/www/html

ENV RS_VERSION 0.9.9

RUN curl -o rs.tar.xz -SL https://storage.tuxed.net/fkooman/public/upload/php-remote-storage/php-remote-storage-${RS_VERSION}.tar.xz \
 && ls rs.tar.xz \
 && tar -xf rs.tar.xz -C /usr/src/ \
 && mv /usr/src/php-remote-storage-${RS_VERSION} /usr/src/rs \
 && cd /usr/src/rs

COPY docker-entrypoint.sh /entrypoint.sh
COPY apache.conf /etc/apache2/sites-enabled/apache.conf

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
