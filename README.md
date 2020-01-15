#launch Dockerfile

__docker build -t ocr-docker-build .

docker run -d -p 2368:2368 ocr-docker-build__

(ocr-docker-build = image name)

=> https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/6211517-creez-votre-premier-dockerfile

#learnt how to install php etc...
https://stackoverflow.com/questions/40719722/unable-to-locate-package-apt-get-in-docker-container

#install wordpress
https://www.tothenew.com/blog/setup-wordpress-using-dockerfile-with-containers-on-two-different-host-machines/
https://medium.com/@mannycodes/custom-wordpress-docker-setup-8851e98e6b8

we got the wordpress config files using __git clone https://github.com/WordPress/wordpress__

#understanding configuration files for nginx
https://www.nginx.com/resources/wiki/start/

#tutorial for php.ini
https://www.phpfacile.com/apprendre_le_php/configuration_avec_php_ini
