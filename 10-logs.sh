#!/bin/bash

USERID=$(id -u)


VAR_FOLDER="/home/ec2-user/shell-practice/LOGS"
LOGS_FILE="/home/ec2-user/shell-practice/LOGS/$0.log"

if [ $USERID -ne 0 ]; then
    echo "use the sudo access to execute the commands" | tee -a $LOGS_FILE
    exit 1 
fi

mkdir -p $VAR_FOLDER

validate () {
    if [ $1 -ne 0 ]; then
        echo "$2 ..............failure" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 ............ success" | tee -a $LOGS_FILE
    fi
}

dnf install nginx -y
validate $? "installing nginx"

dnf install nodejs -y
validate $? "installing nodejs"

dnf install mysql -y
validate $? "installing mysql"