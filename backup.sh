#!/bin/bash 

read -p "Enter source directory: " src_dir
#prompts user for source directory. src_dir is a variable name used to store the "source directory" path.  

timestamp=$(date +%Y-%m-%d_%H-%M)
backup_dir="backup_$timestamp"
#Creates the timestamp variable reference inside the backup_$timestamp variable(container). This is where the final result is stored. 


mkdir -p "$backup_dir"
#This command creates the backup directory first.  

echo "Backup directory created: $backup_dir"
#Just prints out the output for echo.

echo "Copying .txt files..."
cp "$src_dir"/*.txt "$backup_dir" 2>/dev/null
#Copies contents from source directory to backup directory. In bash, it is important to use double quotes so it treats the path as one single item. 

file_count=$( ls "$backup_dir" | wc -l )
#Creates "file count" variable. $(..) is a command substitution that tells bash to run the command inside the brackets first then paste the result into the variable. 
#ls "$backup_dir" lists the contents of new backup folder. 
#The | (pipe) takes output from the ls command and "pours" it directly into the next command as input. 
echo "Backup complete! Files backed up: $file_count"