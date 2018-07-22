# remoteStorage

An open protocol for per-user storage

![logo](https://cdn.rawgit.com/remotestorage/design/master/logo-new/icon.svg)

# How to use this image

The easiest is to use our `docker-compose.yml`.

Make sure you have [docker-compose](http://docs.docker.com/compose/install/) installed. And then:

```
git clone https://github.com/libresh/compose-remotestorage.git
cd compose-remotestorage
docker-compose up
```

You can now access your instance on the port 80 of the IP of your container.

Add a user with `docker-compose exec web php bin/add-user username password`

## Access it from the Internet

We recommend the usage of SSL, so the easiest is to modify the `apache.conf` file, you can find examples [here](https://github.com/fkooman/php-remote-storage/blob/master/contrib/storage.local.conf.ubuntu).
Rebuild the image once done.

Once it is done, you can connect to the port of the host by adding this line to `docker-compose.yml`:
```
web:
...
  - ports:
    - "443:443"
    - "80:80"
...
```

## Contribute

Pull requests are very welcome!

We'd love to hear your feedback and suggestions in the issue tracker: [github.com/libresh/compose-remotestorage/issues](https://github.com/libres/compose-remotestorage/issues).
