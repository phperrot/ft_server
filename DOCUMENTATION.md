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
# CONFIGURATION DOCUMENTATION

## NGINX

https://vonkrafft.fr/console/simple-site-php-avec-docker-nginx/

