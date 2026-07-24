#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then
    echo "please run this script with root user access"
    exit 1
else
    echo "You are running this script with root user access"
fi

echo "Installing nginx"
dnf install nginxxx -y

if [ $? -ne 0 ]; then
    echo "Nginx installation is failure"
else
    echo "Nginx installation is success"
fi

echo "Installing mqsql"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "mysql installation is failure"
else
    echo "mysql installation is success"
fi

echo "Installing nodejs"
dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Nodejs installation is failure"
else
    echo "Nodejs installation is success"
fi