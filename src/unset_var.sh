#!/bin/bash

echo "${SOMEVAR:?"is not defined"}" || true

cal

exit 0