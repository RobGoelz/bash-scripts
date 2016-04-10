#!/bin/bash
# Reading lines in /etc/fstab

File=/etc/fstab

{
read line1
read line2
read line3
read line4
} < $File

echo "First line in $File is:"
echo "$line1"
echo
echo "Second line in $File is:"
echo "$line2"
echo
echo "Third line in $File is:"
echo "$line3"
echo
echo "Fourth line in $File is:"
echo "$line4"

exit 0
