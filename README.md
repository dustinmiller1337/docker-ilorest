# docker-ilorest

## build

```
docker build -t docker-ilorest:latest $(pwd)
```

## setup alias

```
alias ilorest='docker run -it --volume "$(pwd):/tmp" docker-ilorest'
```
