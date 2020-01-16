FROM debian:buster

#install mariaDB, PHP & nginx + mysql
RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y \
		mariadb-server php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip php-fpm php-mysql php-json nginx default-mysql-server wget
#installing wordpress
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -zxvf latest.tar.gz
RUN mv wordpress /var/www/html/wordpress
RUN chown -R www-data:www-data /var/www/html/wordpress/
RUN chmod -R 755 /var/www/html/wordpress/
RUN rm latest.tar.gz

#installing phpmyadmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mv phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpMyAdmin
RUN rm phpMyAdmin-4.9.0.1-all-languages.tar.gz

ADD ./srcs/php.ini ./etc/php/7.3/fpm/php.ini
ADD ./srcs/default ./etc/nginx/sites-available/default
ADD ./srcs/wordpress ./etc/nginx/sites-available/wordpress
ADD ./srcs/wp-config.php ./var/www/html/wordpress/wp-config.php
ADD ./srcs/create_database create_database
#ADD ./srcs/localhost.crt /etc/ssl/certs/localhost.crt
#ADD ./srcs/localhost.key /etc/ssl/private/localhost.key
ADD ./srcs/init.sh init_server.sh
ADD ./srcs/init_db.sh init_db.sh
#ADD ./srcs/script.sh script.sh

#RUN sh init_db.sh

EXPOSE 80
EXPOSE 443
EXPOSE 3306

CMD ["bash", "./script.sh"]
