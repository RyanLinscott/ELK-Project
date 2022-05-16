#!/bin/bash

# Updates apt, answering yes without user being prompted
apt update -y
# Upgrade installed packages, answering yes without user being prompted
apt upgrade -y
# Installs all new packages, and uninstalls any old packages no longer needed, answering yes without user being prompted
apt full-upgrade -y
# Removes packages and their associated cfg files that are no longer needed, answering yes without user being prompted
apt autoremove --purge -y
# All above performed with a single line of code, answering yes to each command without the user being prompted
apt update -y && apt upgrade -y && apt full-upgrade -y && apt-get autoremove --purge -y