#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]; then
    echo "install the below dependencies"
else
    echo "use sudo access buddy!!"
    exit 1
fi

validate () {
    if [ $? -ne 0 ]; then
        echo "$2 ..............failure"
        exit 1
    else
        echo "$2 ............ success"
        exit 0
    fi
}
