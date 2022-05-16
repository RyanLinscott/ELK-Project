#!/bin/bash

#Create's the location /var/backup if not currently present
mkdir -p /var/backup
#Create's a new tar file of /var/backup/home.tar
tar cvf /var/backup/home.tar /home
# Moves the created tar file to this specified location `/var/backup/home.MMDDYYYY.tar`
mv /var/backup/home.tar /var/backup/home.01012020.tar
# Archives of /home directory and saves it to /var/backup/system.tar
tar cvf /var/backup/system.tar /home
#List all backup files, displays human readable file size data and saves the output to file_report.txt
ls -lh /var/backup > /var/backup/file_report.txt
# Displays in human readable format how much free memory is available and saves in to disk_report.txt
free -h > /var/backup/disk_report.txt