#!/bin/bash



#-------------------------file-management
# Source the mkcd script directly to use it in the current shell session
alias mkcd='. ~/bash-scripts-project/scripts/file-management/mkcd.sh'
# Function to extract different types of archive files
alias extract='. ~/bash-scripts-project/scripts/file-management/extract.sh'
# Function to navigate up multiple directories
alias ccd='. ~/bash-scripts-project/scripts/file-management/ccd.sh'


#-------------------------dev-tools
# Start a development server for a web project (example with Python)
alias startserver='. ~/bash-scripts-project/scripts/dev-tools/start_server.sh'


#-------------------------system-management
# Clean the system by removing temporary files and cache
alias cleanup='. ~/bash-scripts-project/scripts/system-management/cleanup.sh'


#-------------------------network-tools
# Test network connectivity with a given site
alias pingtest='. ~/bash-scripts-project/scripts/network-tools/ping_test.sh'


