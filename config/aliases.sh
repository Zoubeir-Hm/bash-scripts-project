#!/bin/bash

PROJECT_DIR=$(pwd)

#-------------------------file-management
# Source the mkcd script directly to use it in the current shell session
alias mkcd=". $PROJECT_DIR/scripts/file-management/mkcd.sh"
# Function to extract different types of archive files
alias extract=". $PROJECT_DIR/scripts/file-management/extract.sh"
# Function to navigate up multiple directories
alias ccd=". $PROJECT_DIR/scripts/file-management/ccd.sh"


#-------------------------dev-tools
# Start a development server for a web project (example with Python)
alias startserver=". $PROJECT_DIR/scripts/dev-tools/start_server.sh"


#-------------------------system-management
# Clean the system by removing temporary files and cache
alias cleanup=". $PROJECT_DIR/scripts/system-management/cleanup.sh"
# Function to check if a command is installed
alias command_check=". $PROJECT_DIR/scripts/system-management/command_check.sh"

#-------------------------network-tools
# Test network connectivity with a given site
alias pingtest=". $PROJECT_DIR/scripts/network-tools/ping_test.sh"


