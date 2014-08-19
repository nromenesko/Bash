#!/bin/sh
#
# If no users are logged in, this script restarts the computer
# at 5:00AM every Sunday


destdir="/users/bioadmin/desktop/log"
CurrentUsers=`who | awk '{ print $1 }'`

# If any users besides root logged in, quit
for user in $CurrentUsers
do
    if [[ "$user" != "root" ]]
    then
        exit 0
    fi
done

# Only root user logged in so restart computer
reboot
exit 1