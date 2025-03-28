#!/bin/bash

userid=$(id -u)

validate(){
   if [$1 -ne 0 ]
   then
       echo "$2..fail"
       exit 1
    else
        echo "$2..success"
    fi       

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
