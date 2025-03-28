#!/bin/bash

userid=$(id -u)

validate(){
   echo "exit status:$1"
   echo "what your doing:$2"

}

if [ $userid -ne 0 ]
then
    echo "installation failed"
    exit 1 #Manually exit
else
    echo "super user"    
fi

dnf install git -y
validate $? "installation of git"


dnf install mysql -y
validate $? "installation of mysql"
