#!/bin/bash


service mariadb start
DB_NAME="test"
DB_USER="yassine"
DB_PASSWORD="test321"

ROOT_USER="root"
ROOT_PASSWORD="test321"

MYSQL_COMMAND="mysql -u$ROOT_USER -p$ROOT_PASSWORD"

mysql -u$ROOT_USER -p$ROOT_PASSWORD -e "ALTER USER '$ROOT_USER'@'localhost' IDENTIFIED BY '$ROOT_PASSWORD'";
mysql -u$ROOT_USER -p$ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u$ROOT_USER -p$ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD';"
mysql -u$ROOT_USER -p$ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';"
mysql -u$ROOT_USER -p$ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

echo "Database '$DB_NAME' and user '$DB_USER' created successfully."

