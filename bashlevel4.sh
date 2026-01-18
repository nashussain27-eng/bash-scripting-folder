#!/bin/bash

mkdir -p Backup
#-p flag tells Bash to create the Backup folder first. It ensure the Backup directory is ready before copying the files into it. 
cp Arena/*.txt Backup/
#Copies all the text files from Arena to Backup. *Asterisk is wildcard that acts as a placeholder. It searches for every file thats ends with .txt then matches the "name" part of the files. It then executes by expanding the command to looking like below:
#cp Arena/archer.txt Arena/hero.txt Arena/mage.txt Arena/warrior.txt Backup/
