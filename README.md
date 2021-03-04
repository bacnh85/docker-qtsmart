## Introduction

Quectel Smart Module development environment - to build the entire Android OS for SC20, SC600, SC66

## Notes

1. Quectel SDK: In order to obtain Quectel SDK for smart modules SC20/SC600/SC66, pls coordinate with your local FAE

## Usage

### Docker-compose

```
version: '3.2'
services:
  qtsmart-dev:
    image: bacnh85/qtsmart-dev
    container_name: qtsmart-dev
    environment:
      - PUID=1000
      - PGID=1000
    volumes:
      - ./:/opt
    tty: true   
```

then create the container:

```
$ docker-compose up -d
```

Everytime, you can login to the container to start the build:

```
$ docker exec -it -u `id -u` qtsmart-dev /bin/bash
1000@5031c1b1955d:/opt$ 
```