#!/bin/sh

# Unloads the daemon and removes the daemon and shell script from their
# working directories

launchctl unload /Library/LaunchDaemons/scheduled_restart.plist
dst1="/Library/LaunchDaemons/scheduled_restart.plist"
dst2="/bin/scheduled_restart.sh"
rm "$dst1"
rm "$dst2"
exit 0