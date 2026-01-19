#!/bin/bash 

read -p "Enter filename to check: " filename

if [ -e "$filename" ]; then
    printf "File '$filename' exists. "

    if [ -r "$filename" ]; then 
        printf "✓ File is readable. "
    else 
        printf "X File is NOT readable. "
    fi 

    if [ -w "$filename" ]; then 
        printf "✓ File is writable. "
    else 
        printf "X File is NOT writable. "
    fi 

    if [ -x "$filename" ]; then 
        printf "✓ File is executable. "
    else 
        printf "X File is NOT executable. "
    fi 
else
    echo "Error: File '$filename' does not exist."
fi 

: ' 
-e = Exists: Returns true if the path exists "check is the file exists". 
-r	Readable: Returns true if you have read permission.	"Check if it's readable".
-w	Writable: Returns true if you have write permission. "Check if it's writable".
-x	Executable: Returns true if you can execute it.	"Check if it's executable".
printf does not move to a new line automatically allowing all the checkmarks to appear next to each other. echo or print would have printed it on a new line.
read -p is to combine two actions into a single line that displays a message and prompt waiting for the user to type an answer. Whatever the user types is instantly stored in the variable name you choose. 
    it makes the UI better keeping it all in the same line. 
'


: 'Structure of the command: 
    if [ .. ]; then
    else
    fi


'
