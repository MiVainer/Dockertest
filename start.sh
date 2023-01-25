#!/bin/bash



site_path="/home/mihail/dockertest/www"

mysql_image="mysql"

nginx_image="miviner/nginxtest"

php_image="macedigital/phpfpm"



mysql_root_pwd="sms2851140"



docker stop php

docker stop nginx

docker stop mysql



docker run --rm -itd --name mysql --env MYSQL_ROOT_PASSWORD=$mysql_root_pwd $mysql_image

docker run --rm -itd --name php -v $site_path:/var/www  $php_image

docker run --rm -itd --name nginx --link php -v $site_path:/var/www -p 80:80 miviner/nginxtest
