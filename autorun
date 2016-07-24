#!/bin/bash
#
#
#

#
# Test for 'inotifywait' program
#
if [ ! -x "/usr/bin/inotifywait" ]; then
	echo "ERROR: Requires the 'inotifywait' program, which on a Debian-based system is"
	echo "part of the 'inotify-tools' package. Please install and try again."
	exit 1
fi

#
# Watch for changes in current directory 
#
while true; do
	inotifywait -qq \
		--recursive \
		--event close_write,moved_to \
		--exclude '^\..*\.sw[px]*$|4913|~$|.git/.*\.lock$|.*i\.log$|tmp/*' \
		.
	clear
	echo "Change detected at $(date "+%H:%M:%S")"
	$1
done
