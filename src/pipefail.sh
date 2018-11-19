#!/bin/bash
if sort "notfound" | uniq; then
	echo "Life is good"
fi

exit 0