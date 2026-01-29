#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
    echo "install the below dependencies"
else
    echo "use sudo access buddy!!"
    exit 1
fi

validate () {
    if [ $1 -ne 0 ]; then
        echo "$2 ..............failure"
        exit 1
    else
        echo "$2 ............ success"
    fi
}
dnf install nginx -y
validate $? "installing nginx"

dnf install nodejs -y
validate $? "installing nodejs"

dnf install mysql -y
validate $? "installing mysql"