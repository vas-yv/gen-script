#!/bin/bash

userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "installation failed"
    exit 1 #Manually exit
fi

dnf install git -y

dnf install mysql -y

echo "is proceeding further?"
