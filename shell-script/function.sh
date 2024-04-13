#!/bin/bash
USERID=$(id -u)
validate(){
    #this function validate previous command and inform user to success or failure
    #   $1 means it will recieve argument
    if [ $1 -ne 0 ]
    then
        echo "installation .... failed"
    else
       echo "installation successful"
    fi   
 }
if [ $USERID -ne 0 ]
then 
    echo "run this script with root access"
    exit 1
else 
    echo "you are root user"
fi
apt install mysql-server -y
validate $?
apt install gitt -y
validate $?