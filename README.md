# remoteStorage

An open protocol for per-user storage

![logo](https://rawgit.com/indiehosters/remoteStorage/remotestorage-wide.svg)

# How to use this image

The easiest is to use our `docker-compose.yml`.

Make sure you have [docker-compose](http://docs.docker.com/compose/install/) installed. And then:

```
git clone https://github.com/indiehosters/remoteStorage.git
cd remoteStorage
docker-compose up
```

You can now access your instance on the port 80 of the IP of your container.

## Accees it from Internet

We recommend the usage of SSL, so the easiest is to modify the `nginx.conf` file.

Once it is done, you can connect to the port of the host by adding this line to `docker-compose.yml`:
```
web:
...
  - ports:
    - "443:443"
    - "80:80"
...
```

## Installation

## Contribute

Pull requests are very welcome!

We'd love to hear your feedback and suggestions in the issue tracker: [github.com/indiehosters/remoteStorage/issues](https://github.com/indiehosters/remoteStorage/issues). 
