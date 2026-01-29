#!/bin/bash

USERID=$(id -u)

VAR_FOLDER="/home/ec2-user/shell-practice/LOGS"
VAR_LOGS="/home/ec2-user/shell-practice/LOGS/$0.log"

if [ $USERID -ne 0 ]; then
    echo "use the sudo access to execute the commands" | tee -a $VAR_LOGS
    exit 1 
fi

mkdir -p $VAR_FOLDER

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