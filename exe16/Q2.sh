#!/bin/bash

while true
do 

	echo "1.Date"
	echo "2.cal"
	echo "3.Ls"
	echo "4.pwd"
	echo "5.exit"

	echo -n "Enter Your Choice :"

	read choice

  case $choice in 
	1) date ;;
	2) cal ;;
	3) ls ;;
	4) pwd ;;
	5) echo exit ;;
	*) echo "invalid choice" ;;
	
  esac
done
#!/BIN/BASH



ECHO "lOGIN nAME : $user"
ECHO "hOME dIRECTORY : $home"


