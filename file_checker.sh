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