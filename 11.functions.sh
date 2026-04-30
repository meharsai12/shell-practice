#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]
then

echo " Error :; You don't have root access to perform"
exit 1

else
   echo "You have root acces you can perform"
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

 dnf list installed mysql-server

 if [ $? -ne 0 ]
 then
    echo "Mysql is not installed going to install it "
    dnf  install mysql-server
    VALIDATE $? "mysql"
 else

    echo " Mysql is alreasdy installed nothing to do "

 fi 


 dnf list installed nginx

 if [ $? -ne 0 ]
 then 

 echo " Nginx is not installed going to install it "
    dnf install nginx -y
    VALIDATE $? "nginx"

 else
    echo " Nginx is already installed :: Nothing to do "

fi


dnf list installed python3

if [ $? -ne 0 ]
then 
echo " python3 is not installed going to install it "
dnf install python3 -y
VALIDATE $? "python3"
else

echo " python3 is already installed :: NOthing to do "

fi
