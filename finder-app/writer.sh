#!/bin/bash
# Writer script for assignment 1
# Author: joagonzalez

if [ $# -lt 2 ]; then
    echo "ERROR: Missing arguments. Usage: writer.sh <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

writedir=$(dirname "$writefile")
mkdir -p "$writedir"

if ! echo "$writestr" > "$writefile"; then
    echo "ERROR: Could not create file $writefile"
    exit 1
fi
