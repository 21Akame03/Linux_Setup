#!/usr/bin/bash

option=$1

if [option -eq "-c" || option -eq "-Create"]
then
    podman create --name mysql_database -e MYSQL_USER=user -e MYSQL_PASSWORD=pass -e MYSQL_DATABASE=db -p -e MYSQL_ROOT_PASSWORD=secret_password  3306:3306 mysql

else 
    podman start mysql_database
fi

