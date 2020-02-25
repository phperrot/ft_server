FROM debian:buster-slim

RUN apt-get -y update && apt-get -y install mariadb-server \ 
			wget \
			php \
			php-cli \
	 		php-cgi \
			php-mbstring \
			php-fpm \
			php-mysql \
			nginx \
			libnss3-tools

COPY srcs ./root/

WORKDIR /root/

RUN cp localhost_index_off /etc/nginx/sites-available/localhost
RUN ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/

RUN mkdir /var/www/localhost
RUN cp -r wordpress /var/www/localhost/wordpress
RUN rm -r wordpress
RUN cp -r phpMyAdmin /var/www/localhost/phpMyAdmin
RUN rm -r phpMyAdmin

ENTRYPOINT ["bash", "container_entrypoint.sh"]

MAINTAINER PHILEMON PERROT <phperrot@student.42.fr>

EXPOSE 80
EXPOSE 443

