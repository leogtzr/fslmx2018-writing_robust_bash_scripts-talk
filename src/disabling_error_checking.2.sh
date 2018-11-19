#!/bin/bash
set -o errexit
cp "notfound" "b" || true
cp "notfound" "b" || :
echo ":)"

exit 0