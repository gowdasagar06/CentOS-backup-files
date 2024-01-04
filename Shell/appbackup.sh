#!/bin/bash
timestamp=$(date +%Y-%m-%d-%H-%M-%S) 
tar -czvf /home/sagar/appbackup/server_files_$timestamp.tar.gz /opt/mattermost/bin/mattermost
