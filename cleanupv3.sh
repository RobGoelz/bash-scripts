#!/bin/bash
# Proper header for a bash script
# Cleanup version 3 

# Run as root, of course.
# Insert code here to print error message and exit if not root.

LOG_DIR=/var/log
# Variables are better than hard-coded values.

cd $LOG_DIR
 
cat /dev/null > messages
cat /dev/null > wtmp

echo "Logs cleaned up."

exit # The right and proper method of "exiting" from a script.
     # A bare "exit" (no parameter) returns the exit status
     #+ of the preceeding command.
