# docker-dnmap-client

Dnmap client image for Docker

###  Usage

Default server is localhost.
Use SERVER environment variable for setting up your target server.

```
$ docker run -t -i -e "SERVER="x.x.x.x" cyrilbkr/dnmap-client
```

or 

```
$ docker run -d -e "SERVER="x.x.x.x" cyrilbkr/dnmap-client
```

