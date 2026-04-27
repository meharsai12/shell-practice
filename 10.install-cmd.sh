#!/bin/bash

USERID=$(id-u)


if [ $USERID -ne 0 ]
then

echo " Ypu don't have root access to perform"

else
   echo "You have root aces you can perform"
fi