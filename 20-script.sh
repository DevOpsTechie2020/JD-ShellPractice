#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then
    echo "please run this script with root user access"
    exit 1
else
    echo "You are running this script with root user access"
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 is Failure"
        exit 1
    else
        echo "$2 is Success"
}

echo "Installing nginx"
dnf install nginx -y
VALIDATE $? "Installing nginx" 

echo "Installing mqsql"
dnf install mysql -y
VALIDATE $? "Installing mysql"

echo "Installing nodejs"
dnf install nodejs -y
VALIDATE $? "Installing nodejs"