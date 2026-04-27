#!/bin/bash

USERID=$(id-u)


if [ $USERID -ne 0 ]
then

echo " Error :; You don't have root access to perform"
exit 1

else
   echo "You have root aces you can perform"
fi