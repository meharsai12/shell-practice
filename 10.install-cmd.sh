#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]
then

echo " Error :; You don't have root access to perform"
exit 1

else
   echo "You have root aces you can perform"
fi


dnf list installed mysql

#If the response is 0 by running command $?= The output of previous command 

if [ $? -ne 0 ]
then 
    echo "Mysql i snot installed going to install it "
    dnf install mysql -y
    if [ $? -eq 0 ]
    then 
        echo " My sql installatrion is succesful"
    else
        echo "Error Mysql installation is failure"
        exit 1
    fi
else 
    echo "My sql is already installed. Nothing to do "

fi
