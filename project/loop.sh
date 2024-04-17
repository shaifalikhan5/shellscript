#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0]
R="e\[31m"
N="e\[0m"
then 
    echo -e "$R ERROR: please run the script with root user $N"
    exit 1
fi

for i in $@
do 
  apt install $i -y
done  