#!/bin/bash

#Program Start

FILE=PhoneBookDataBase.txt

if [ -z $1 ];then
	echo "-i to add new phone contact"
	echo "-v to view all contacts"
	echo "-s to search for phone record"
	echo "-e to delete all phone contacts"
	echo "-d to delete one contact"
fi

#Insert a New Contact

if [[ $1 == *"-i"* ]]
then

    #Check if file exists
    if [ -f "$FILE" ];then
       echo "File $FILE Exists."
    else
       touch PhoneBookDataBase.txt
       echo "$File file Doesn't Exist."
       echo "$FILE is Created."
    fi
	echo Enter Name:
	read Name
	echo Enter Phone Number:
	read ID
	echo $Name $ID >> PhoneBookDataBase.txt
fi

#View Saved Contacts

if [[ $1 == *"-v"* ]]
then
	cat PhoneBookDataBase.txt
fi

#Delete All Contacts

if [[ $1 == *"-e"* ]]
then
	> PhoneBookDataBase.txt
fi

#Search For a Contact

if [[ $1 == *"-s"* ]]
then
	read -p "Enter first name:" search
	found=$(grep $search $FILE)
	if [ -z "$found" ] ;
	then
		echo "$found not found"
	else
		echo $found
	fi
fi

#Delete One Record

if [[ $1 == *"-d"* ]] ;then
	echo "Search a Record"
	read -p "Enter First Name of the record you wanna delete : " search
	if  [ -z "$found" ] ;then
		echo "No Item found"
	else
		sed -i /"$search"/d PhoneBookDataBase.txt
		echo "Delete Successfully"
	fi
fi

#Program End
