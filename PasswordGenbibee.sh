#!/bin/bash

echo "     Welcome to simple password generator [Created by bibee]"
echo ""
read -p "Please enter how many passwords do you want to generate :" PASS_AMOUNT
read -p "Please enter the length of the password you want to generate :" PASS_LENGTH
echo ""
echo "      Hint! The base64 can generate stronger password than hex....!"
echo ""
read -p "Please choose (1) base64 or (2) hex for create your password :" PASS_ALGORITHM


#Base64
if [ "$PASS_ALGORITHM" = "1" ];
then
 for A in $(seq 1 $PASS_AMOUNT);do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
 done
#else
#	echo "Invalid input.Please try again with valid input"
fi

#HEXADECIMAL
if [ "$PASS_ALGORITHM" = "2" ];
then
 for B in $(seq 1 $PASS_AMOUNT);do
 	openssl rand -hex 48 | cut -c1-$PASS_LENGTH
done
fi

echo "--Thank you for choose this tool to create your password-- "
