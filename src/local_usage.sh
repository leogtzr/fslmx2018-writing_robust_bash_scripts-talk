#!/bin/bash

set -u

some_function() {
	# local i
    for ((i = 0; i < 10; i++)); do
        printf "Value: %d\n" ${i}
    done
}

some_function
echo "i: ${i}"

exit 0