#!/bin/bash
# Script that shows the time and date, lists all logged-in users, and gives the systame uptime.
# Script saves this information to a log file in ~/.

HOST=$HOSTNAME
echo "Displaying current system information"
echo "Date and time is:"
date | tee ~/$HOST.status.$(date '+%F')
echo " " >> ~/$HOST.status.$(date '+%F')


echo "Logged in users"
who -u | tee ~/$HOST.status.$(date '+%F')

echo "Hostname is:"
hostname | tee ~/$HOST.status.$(date '+%F')

exit 0
