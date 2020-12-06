# docker-ilorest

[![Build Status](https://cloud.drone.io/api/badges/dustinmiller1337/docker-ilorest/status.svg)](https://cloud.drone.io/dustinmiller1337/docker-ilorest)

## build

```
docker build -t docker-ilorest:latest $(pwd)
```

## setup alias

```
alias ilorest='docker run -it --volume "$(pwd):/tmp" docker-ilorest'
```
