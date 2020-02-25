#!/bin/sh

cd ssl
chmod +x mkcert
./mkcert -install
./mkcert localhost
cd ..

#STARTING NINGX
service nginx reload
service nginx configtest
service nginx start
service nginx status

#STARTING PHP SERVER
/etc/init.d/php7.3-fpm start
/etc/init.d/php7.3-fpm status

#STARTING + CONFIGURING MYSQL

service mysql start
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'wordpress'@'localhost';" | mysql -u root
echo "SET password FOR 'wordpress'@'localhost' = password('password');    " | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' IDENTIFIED BY 'password';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
mysql wordpress -u root < /root/wordpress.sql


tail -f /var/log/nginx/access.log /var/log/nginx/error.log
