#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "installation failed"
    exit 1 #Manually exit
else
    echo "super user"    
fi

dnf install git -y
if [ $? -ne 0 ]
then
    echo "installation of git is failed"
    exit 1
 else
    echo" git installation is success"
fi       

dnf install mysql -y
if [ $? -ne 0 ]
then
    echo " installation of mysql failed"
    exit 1
else
    echo " installation of mysql success"
fi