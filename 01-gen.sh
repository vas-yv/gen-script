#!/bin/bash

userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "installation failed"
fi

dnf install git -y

dnf install mysql -y
