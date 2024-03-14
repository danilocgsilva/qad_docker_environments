#!/bin/bash

a2enmod rewrite
service apache2 start
service mariadb start

echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'phppass'; FLUSH PRIVILEGES;" | mysql -uroot

while :
do
    sleep 1000
done
