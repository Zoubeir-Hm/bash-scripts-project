#!/bin/bash

# Function to extract different types of archive files
if [ -f "$1" ]; then
    case "$1" in
        *.tar.bz2)  tar xjf "$1"   ;;
        *.tar.gz)   tar xzf "$1"   ;;
        *.bz2)      bunzip2 "$1"   ;;
        *.rar)      unrar x "$1"   ;;
        *.gz)       gunzip "$1"    ;;
        *.tar)      tar xvf "$1"   ;;
        *.tbz2)     tar xjf "$1"   ;;
        *.tgz)      tar xzf "$1"   ;;
        *.zip)      unzip "$1"     ;;
        *.Z)        uncompress "$1";;
        *)          echo "'$1' cannot be extracted via extract";;
    esac
else
    echo "'$1' is not a valid file"
fi

