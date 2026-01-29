#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run the commands with sudo access buddy!!"
    exit 1
fi

echo "You are the root user so installing nginx buddy!!"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installation nginx .......... Failed!!"
    exit 1
else
    echo "Installation nginx ................ Success !!"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing MySQL ... failed"
    exit 1
else
    echo "Installing MySQL ... Success"
fi

#dnf install nodejs -y

#if [ $? -ne 0 ]; then
#    echo "Installing nodejs ... FAILURE"
#    exit 1
#else
#    echo "Installing nodejs ... SUCCESS"
#fi

