#!/bin/bash

# Create a directory and navigate into it
if [ -n "$1" ]; then
    mkdir -p "$1" && cd "$1"
else
    echo "Usage: mkcd <directory_name>"
fi

