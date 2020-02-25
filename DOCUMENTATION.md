# DOCKER DOCUMENTATION

this [video](https://www.youtube.com/watch?v=YFl2mCHdv24) explains what docker is.

Short summary here:

![Image of Docker](https://github.com/phperrot/ft_server/blob/master/documentation/Screen%20Shot%202020-02-20%20at%2012.31.16%20PM.png)

command to build an image:
```shell
docker build -t [image-name] .
```
command to run an image
```shell
docker run -p 443:443 [image-name]
```
get terminal interface while running: add -i flag
```shell
docker run -p 443:443 -i [image-name]
```

## HANDLING DOCKER CONTAINER

```shell
docker container ls
```

stopping an existing container
```shell
docker container stop container [CONTAINER_ID]
```

removing an existing container (must be stopped)
```shell
docker container rm container [CONTAINER_ID]
```

to stop and remove all containers:
```shell
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)
```

# CONFIGURATION DOCUMENTATION

## NGINX

https://vonkrafft.fr/console/simple-site-php-avec-docker-nginx/

## WORDPRESS

http://wordpress.laurentdumoulin.com/premier-pas/structure-de-la-base-de-donnees-wordpress/
(is used for wordpress.sql file)

## SSL
https://lehollandaisvolant.net/?d=2019/01/07/22/57/47-localhost-et-https

## INDEX
http://nginx.org/en/docs/http/ngx_http_autoindex_module.html
