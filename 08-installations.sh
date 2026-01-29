#!/bin/bash

USERID=$(id -u)

if [$USERID -ne 0 ]; then
    echo "please run the commands with sudo access buddy!!"
    exit 1
if