#!/bin/bash
  
#User  selecting the directories to backup 

read -p "Enter the absolute path to backup:" backup_path  

#User selecting the destination server IP address
 read -p "Enter the destination IP address: " dest_ip  

#Create gzip compressed and store in /tmp dir 
mkdir tmp
archived_file=$(date +%Y-%m-%d_%H-%M-%S)_backup 
tar -czvf /tmp/$archived_file.tar.gz $backup_path


#by scp command send the archived file to the destination server 
sudo scp /tmp/$archived_file.tar.gz sagar@$dest_ip:/home/sagar/backup/  

#delete gzip from /tmp 
#rm tmp/*.gz
