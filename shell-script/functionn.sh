#!/bin/bash
# define variable
DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log


USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
     echo "error : please run the script with root access"
     exit 1
else 
    echo "you are root user"
fi
apt install mysql-server -y &>$LOGFILE
if [ $? -ne 0 ]
  then
      echo "installation of mysql failed"
      exit 1
  else
     echo "instalation of mysql success"
fi         
      



