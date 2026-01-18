#!/bin/bash

if [ -f "Arena/hero.txt" ]; then
#-f returns true if the file exists and is a regular file. It is known as a file test operator
    echo "Hero found!"
else
    echo "Hero missing!"
fi
