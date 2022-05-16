#!/bin/bash

# Recursiveley removes /tmp directories
rm -rf /tmp/*
rm -rf /var/tmp/*
# Clear apt update
apt clean -y
# Removes all thumbnails
rm -rf /home/sysadmin.cache/thumbnails
rm -rf /home/instructor.cache/thumbnails
rm -rf /home/student.cache/thumbnails
rm -rf /root/.cache/thumbnails