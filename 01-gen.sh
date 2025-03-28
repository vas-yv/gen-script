#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script_name-$timestamp.log

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

dnf install git -y &>>$logfile
validate $? "installation of git"


dnf install mysql -y &>>$logfile
validate $? "installation of mysql"
