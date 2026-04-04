#!/bin/bash


<<help

this is a shell script
to create user 


help


echo "===============  Creation of User Started  ==========="

read -p "enter the username:" username

read -p "enter the password:" password


sudo useradd -m "$username"


echo -e "$password\n$password" | sudo passwd "$username"

echo "=========== Creation of Completed =========="


sudo userdel -r  "$username"

echo ========== Delete User completed ==========

#cat /etc/passwd | grep "$username"  | wc | awk '{print $1}'

if [ $(cat /etc/passwd | grep "$username"  | wc | awk '{print $1}') == 0 ]
then
	echo "as wc is 0 the user is deleted"
else
	echo "the user was not deleted"

fi
#echo "as wc is 0 the user is deleted"
