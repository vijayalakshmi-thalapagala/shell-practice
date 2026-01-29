#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
    echo "install the below dependencies"
else
    echo "use sudo access buddy!!"
fi
