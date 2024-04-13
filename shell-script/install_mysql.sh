#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "please run the script with root user"
else
    echo "you are root user"
fi

apt install mysql-server -y

if [ $? -ne 0 ]
then 
   echo "installation of mysql failed"
else 
   echo "mysql installed"   
fi
