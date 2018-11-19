#!/bin/bash
set -o errexit
# Critical code.

# Disable error checking for non-critical code
set +o errexit
cp a b
echo "Hola"

# When we are done ...
set -o errexit

echo "Mundo"

exit 0