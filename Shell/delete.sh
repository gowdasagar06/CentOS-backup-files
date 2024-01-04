#!/bin/bash  
find . -type l ! -exec test -e {} \; -delete  
find . -type f -perm 777 -user sagar -print0 | xargs -0 -p rm  
"Are you sure you want to delete these files? (y/n) " confirm 
if [[ $confirm == [yY] ]]; then     
find . -type f -perm 777 -user sagar -delete 
fi
