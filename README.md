# Smart48 Redis

Image used for local DevOps testing with Minikube and based on https://github.com/laradock/laradock/tree/master/redis


## Docker Build

To build for our own Smart48 Docker Hub repository we use

```
docker build . -t smart48/smt-redis
```

This will build with the tag using our organization's name and name for the image. Make sure Docker is running or see something like Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?


## Test

You can test the build image using:

```
docker run --name smt-redis -d smart48/smt-redis:latest
```
And then you can check it using

```
docker exec -it smt-redis bash
```

## Docker Tag


To tag the latest stabele build you can use `docker tag <repo/image> <repo/image:version>`:

```
docker tag smart48/smt-redis smart48/smt-redis:1.1
```

You will on listing then see the newly added version:

```
docker images |grep smt-redis
smart48/smt-redis              1.0                 60773570708b        17 seconds ago      104MB
smart48/smt-redis              latest              60773570708b        17 seconds ago      104MB
smart48/smt-redis              <none>              599bf9755a53        4 months ago        104MB
```
## Test

You can test the build image using:

```
docker run --name smt-redis -d smart48/smt-redis:latest
```

To see if it is there we do a `docker ps |grep smt`

## Docker Push

To push the built image you run:

```
docker image push smart48/smt-redis
```

or with chosen tag

```
docker image push smart48/smt-redis:1.1
```