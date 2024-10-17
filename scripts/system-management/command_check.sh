#!/bin/bash

# Function to check if a command is installed

# Check if a command was provided as an argument
if [ -z "$1" ]; then
    echo "Usage: command_check <command_name>"
    exit 1
fi

if ! command -v "$1" &> /dev/null; then
    echo "Error: '$1' is not installed. Please install it to proceed."
    exit 1
else
    echo "'$1' is installed."
fi


