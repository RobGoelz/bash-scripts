#!/bin/bash

echo "Type the name of the user you want to add, followed by [Enter]"

read user

echo "Adding a local user"

useradd $user

echo "Set password for $user"

passwd $user

echo "User addition completed."
