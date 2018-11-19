#!/bin/bash
set -x

readonly lockfile="lock"

if (set -o noclobber; echo "$$" > "$lockfile" ); then
   trap 'rm -f "$lockfile"; exit $?' INT TERM EXIT

   echo "Hello!"
   sleep 20s
   echo "Bye ..."

   rm -f "$lockfile"
   trap - INT TERM EXIT
else
   echo "Failed to acquire lockfile: $lockfile." 
   # echo "Held by $(cat $lockfile)"
fi

exit 0