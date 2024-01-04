#!/bin/bash 
#database info 
user="mmuser" 
password="<<mmuser-Sagar@123>>" 
db_name="mattermost"  
#dump directory 
dump_dir="/home/sagar/dump"  
#to create 5 dump files 
for i in {1..5} 
do   
# Delete the oldest dump if any   
if [ "$(ls -1 $dump_dir | wc -l)" -ge 4 ]   
then     
oldest_dump="$(ls -1 $dump_dir | sort | head -n 1)"     
rm "$dump_dir/$oldest_dump"   
fi    
# Create the dump filename with timestamp   
timestamp="$(date +%Y-%m-%d_%H-%M-%S)"   
dump_filename="${db_name}_${timestamp}_$i.sql"    
# Create the dump   
mysqldump --user=$user --password=$password $db_name > "$dump_dir/$dump_filename" 
done
