#!/bin/bash

# Function to check if a command is installed
function check_command_() {
    if ! command -v "$1" &> /dev/null; then
        echo "Error: '$1' is not installed. Please install it to proceed."
        exit 1
    fi
}

# Function to extract different types of archive files
if [ -f "$1" ]; then
    case "$1" in
        *.tar.bz2)  
            check_command_ "tar" && tar xjf "$1" ;;
        *.tar.gz)   
            check_command_ "tar" && tar xzf "$1" ;;
        *.bz2)      
            check_command_ "bunzip2" && bunzip2 "$1" ;;
        *.rar)      
            check_command_ "unrar" && unrar x "$1" ;;
        *.gz)       
            check_command_ "gunzip" && gunzip "$1" ;;
        *.tar)      
            check_command_ "tar" && tar xvf "$1" ;;
        *.tbz2)     
            check_command_ "tar" && tar xjf "$1" ;;
        *.tgz)      
            check_command_ "tar" && tar xzf "$1" ;;
        *.zip)      
            check_command_ "unzip" && unzip "$1" ;;
        *.Z)        
            check_command_ "uncompress" && uncompress "$1" ;;
        *)          
            echo "'$1' cannot be extracted via this script." ;;
    esac
else
    echo "'$1' is not a valid file"
fi

