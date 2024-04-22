#!/bin/bash

USERID=$(id -u)
TIMESTUMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)
LOGFILE=/tem/$SCRIPT_NAME-TIMESTUMP.log

VALIDATE (){
    if [ $1 -ne 0 ]
    then echo "$2... FAILURE"
       Exit 1
    else
       echo "$2.... SUCCESS"
    fi
}
    if [$USERID -ne 0 ]
    then
      echo "please run this script with root access."
      exit 1 #manual ga error vasthe exit avvamani cmd isthunam indhulo
    else
    echo "you are super user."
    fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"


