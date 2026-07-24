#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then
    echo "please run this script with root user access"
    exit 1
else
    echo "You are running this script with root user access"
fi

echo "Installing nginx"
dnf remove nginx -y

if [ $? -ne 0 ]; then
    echo "Nginx uninstallation is failure"
    exit 1
else
    echo "Nginx uninstallation is success"
fi

echo "Installing mqsql"
dnf remove mysql -y

if [ $? -ne 0 ]; then
    echo "mysql uninstallation is failure"
    exit 1
else
    echo "mysql uninstallation is success"
fi

echo "Installing nodejs"
dnf remove nodejs -y

if [ $? -ne 0 ]; then
    echo "Nodejs uninstallation is failure"
    exit 1
else
    echo "Nodejs uninstallation is success"
fi