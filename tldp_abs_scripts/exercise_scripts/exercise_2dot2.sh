#!/bin/bash
# Script that shows the time and date, lists all logged-in users, and gives the systame uptime.
# Script saves this information to a log file in ~/.

HOST=$HOSTNAME
LOG_PATH=~/$HOST.status.$(date '+%F_%T').log

echo "Displaying current system information" | tee -a $LOG_PATH 

printf '\n' | tee -a $LOG_PATH 

echo "Date and time is:" | tee -a $LOG_PATH
date | tee -a $LOG_PATH

printf '\n' | tee -a $LOG_PATH

echo "Logged in users" | tee -a $LOG_PATH
who -u | tee -a $LOG_PATH

printf '\n' | tee -a $LOG_PATH

echo "Hostname is:" | tee -a $LOG_PATH
hostname | tee -a $LOG_PATH

exit 0
