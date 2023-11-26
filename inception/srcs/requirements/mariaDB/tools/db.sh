#!/bin/bash

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

echo "CREATE DATABASE IF NOT EXISTS $MDB;" | mariadb -u root 
echo "CREATE USER IF NOT EXISTS '$MDB_USER'@'%' IDENTIFIED BY '$MDB_PASS';" | mariadb -u root
echo "GRANT ALL PRIVILEGES ON $MDB.* TO '$MDB_USER'@'%';" | mariadb -u root
echo "FLUSH PRIVILEGES;" | mariadb -u root

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld
