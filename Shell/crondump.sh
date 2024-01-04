#!/bin/bash

timestamp=$(date +%Y%m%d%H%M%S) 
mysqldump -u mmuser -p<<mmuser-Sagar@123>> mattermost > /home/sagar/database/$timestamp.sql
