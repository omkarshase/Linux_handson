#!/bin/bash

if [ -f "$1" ]; then
    ls -l "$1" | awk '{print "Last Modified:", $6, $7, $8}'
else
    echo "File does not exist"
fi

