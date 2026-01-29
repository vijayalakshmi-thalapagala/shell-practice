#!/bin/bash

USERID=$(id -u)

VAR_FOLDER="/home/ec2-user/shell-practice/LOGS"
VAR_LOGS="/home/ec2-user/shell-practice/LOGS/$0.log"

if [ $USERID -ne 0 ]; then
    echo "use the sudo access to execute the commands" | tee -a $VAR_LOGS
    exit 1 
fi

