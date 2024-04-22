#!/bin/bash

USERID=$(id -u)

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

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install git -y
VALIDATE $? "Installing git"


