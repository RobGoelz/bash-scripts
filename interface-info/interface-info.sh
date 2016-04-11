#!/bin/bash
# Script to capture interface information for servers

# This script takes in server names as positional parameters 
#+ to bash, and returns all interface information 
#+ (via ifconfig) and the route information for the server.

# This information is then logged using a code block redirect
#+ , to the local directory where the script was run.


# Declaring variables:
ROOT_UID=0
E_NOTROOT=87
E_NOARGS=65

# Check for root access:

if [ $UID -ne $ROOT_UID ]
then
	echo "`basename $0` requires root access."
	exit $E_NOTROOT
fi

#Check for command-line input

if [ -z "$1" ]
then 
	echo "Usage: `basename $0` {servers to query} (separated by spaces)"
	exit $E_NOARGS
fi

for arg in $@
do
{
	echo
	echo "$arg interface information"
	ssh $arg "ifconfig"
	echo
	echo "$arg route information"
	ssh $arg "route"
	echo "All information captured to $PWD interface-info.$arg.$(date '+%F').log"
} >> ./interface-info.$arg.$(date '+%F').log		# Use code block redirect to log all information captured
done

exit 0
