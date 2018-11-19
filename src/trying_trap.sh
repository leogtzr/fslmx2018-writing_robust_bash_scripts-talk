#!/bin/bash
err_report() {
	local -r line_number="${1}"
	echo "~~~~ Error on line ${line_number} ~~~~~~>"
    sed --quiet "${line_number}p" < "${0}"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~>"
}

set -eE
trap 'err_report ${LINENO}' ERR
echo 'hello' | grep 'foo'

echo "Hello! ..."

exit 0