#!/bin/bash
APP_LOG_DIR=/home/shaif/logdir

DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$0
LOGDIR=/home/shaif/logdir
LOGFILE=$LOGDIR/$0-$DATE
#
FILES_TO_DELETE=$(find $APP_LOG_DIR -name "*.log" -type f -mtime +14)
echo "$FILES_TO_DELETE"

while read line
do
 echo "deleting $line">>&$LOGFILE
 rm -rf $line
done <<< $FILES_TO_DELETE