#!/bin/bash 

mkdir -p bash_demo
cd bash_demo
touch demo.txt 
echo "This is a file that was created on the $(date +%Y-%m-%d)" > demo.txt 

echo -n "File contents: "
cat demo.txt


#-n flag tells Bash not to create a new line after printing the text. Can use printf to which will print the same output. If I used just echo, the output will be printed on a new line. 
