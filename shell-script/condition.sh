#!/bin/bash
A=$1
if [ $A -gt 10 ]
then
        echo "$A is greater than 10"
elif [ $A -eq 10 ]
then
        echo "both values are equal"
else
        echo "$A is less than 10"
fi