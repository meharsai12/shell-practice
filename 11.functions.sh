#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]
then

echo " Error :; You don't have root access to perform"
exit 1

else
   echo "You have root aces you can perform"
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo "Installing $2 is ... SUCCESS"
    else
        echo "Installing $2 is ... FAILURE"
        exit 1
    fi
}

 dnf list installed mysql

 if [ $? -ne 0 ]
 then
    echo "Mysql i snot installed going to install it "
    dnf list install mysql -y
    VALIDATE $? "mysql"
 else

    echo " Mysql i salreasdy installed nothing to do "

 fi 
