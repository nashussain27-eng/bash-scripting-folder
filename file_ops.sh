#!/bin/bash 

mkdir -p bash_demo
cd bash_demo
touch demo.txt 
echo "This is a file that was created on the $(date +%Y-%m-%d)" > demo.txt 

echo -n "File contents: "
cat demo.txt