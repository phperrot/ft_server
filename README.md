To build the docker image, run :
```shell
docker build -t server .
```
The image is now created. To start an instance of it, run :
```shell
docker run -p 80:80 -p 443:443 -d server
```
have a look at this ft_server: https://github.com/cclaude42/ft_server
