#!/bin/bash
# step1 - define variable
DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME_$DATE.log
USERID=$(id -u)
# step2 - check whether user is root or not
if [ $USERID -ne 0 ]
then 
    echo "error: run the script with root user"
    exit 1
else   
    echo "you are root user"
fi
# install multiple package from command line
for i in $@
do 
  apt install $i -y &>$LOGFILE
  if [ $? -ne 0 ]
  then 
      echo "$i is not successfully installed lets installed it"
             apt install $i -y &>$LOGFILE
             validate $? "$i"
  else 
      echo "$i allready installed succesfull"
  fi          
done

validate(){
    if [ $1 -ne 0 ]
    then
        echo "installing $2 ........... failure"
        exit 1
    else
        echo "installing $2...............success"    
}

