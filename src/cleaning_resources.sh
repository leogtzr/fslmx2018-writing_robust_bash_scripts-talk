#!/bin/bash

clean() {
	echo "Cleaning temporary files!"
	echo "Done"
	trap - INT TERM EXIT
	exit 0
}

trap 'clean' EXIT SIGINT SIGTERM

echo "I am done ... "
sleep 30s

exit 0