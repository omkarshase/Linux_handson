#!/bin/bash
echo "Q13"

ls -d .[^.]*

echo"Q14"

find . -maxdepth 1 -type f -executable

echo"Q15"

read -p "Enter first file: " f1
read -p "Enter second file: " f2

tr 'a-zA-Z' 'A-Za-z' < "$f1" >> "$f2"


echo"Q16"


echo "Welcome $USER"
ls $HOME
