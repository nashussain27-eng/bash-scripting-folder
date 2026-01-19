#!/bin/bash

mkdir Battlefield
#Creates a directory names 'Battlefield' 
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt
#create files named knight.txt, sorcerer.txt, and rogue.txt inside Battlefield
if [ -f "Battlefield/knight.txt" ]; then
#Check if knight.txt exists. If it does, it will move it to a new directory called "Archive" 
    mkdir Archive
    mv Battlefield/knight.txt Archive/
    echo "knight.txt has been moved to Archive."
else
    echo "knight.txt not found"
#If the file is not located then it will print out the above. 
fi 

echo "Contents of Battlefield:"
ls Battlefield

echo "Contents of Archive:"
ls Archive

#Lists the content of both Battlefield and Archive. 

