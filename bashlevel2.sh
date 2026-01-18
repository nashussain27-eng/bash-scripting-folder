#!/bin/bash

for i in {1..10}
#for is the command that initiates the loop. It tells the computer to take the list of items and repeat instructions exactly 1 time for every item in that list. "in" acts as the bridge between your variable (container) and data.
#{1..10} This is a brace expansion. Shorthand way to generate a sequence of strings or numbers without having to type them out manually. "i" is for the index treated as an integer. 
do
#Because this is a loop and not a decision we are going to use "do" instead of "if" as we want the script to do something rather than make a decision on true or false(logocal flow).
    echo "$i"
done
