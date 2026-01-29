#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
    echo "install the below dependencies"
else
    echo "use sudo access buddy!!"
fi

if [ $? -eq 0 ]; then
    echo "installing below dependencies"
    echo "starting with nginx"
    dnf install nginx -y
    exit 1
fi

