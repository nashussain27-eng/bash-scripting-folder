#!/bin/bash

if [ -z "$1" ]; then
#if [ ... ]; starts a conditional logic block which is a decision. -z zero length test checks if the string is empty. $1 represents the first argument typed after the script name.
#$1 represents test.txt
    echo "No file provided"
    exit 1
#exit 1 stops the script immediately with an error status so it doesn't try to process a file that doesn't exist
fi 

if [ ! -f "$1" ]; then
#(-z "$1") only looked to see if the user typed anything. This check (! -f "$1") is much smarter because it verifies that what they typed is actually a real file they have permission to access.
    echo "File not found!"
    exit 1
#Terminates the script immediately so it doesn't crash later when trying to count the lines in a non-existent file. 
fi

LINE_COUNT=$(wc -l < "$1")
echo "The file '$1' has $LINE_COUNT lines"
#$(...) tells bash to run the command inside these parentheses and give the result back to the variable. 
#wc -1 is the word count command and the -l flag is what counts the lines
#LINE_COUNT creates a variable to store the result of the calculation. 
