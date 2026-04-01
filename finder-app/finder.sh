#!/bin/bash
# Finder script for assignment 1
# Author: joagonzalez

if [ $# -lt 2 ]; then
    echo "ERROR: Missing arguments. Usage: finder.sh <filesdir> <searchstr>"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
    echo "ERROR: $filesdir is not a directory"
    exit 1
fi

numfiles=$(find "$filesdir" -type f | wc -l)
numlines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are ${numfiles} and the number of matching lines are ${numlines}"
