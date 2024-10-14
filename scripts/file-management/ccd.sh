#!/bin/bash


# function to navigate up multiple directories
if [[ -z "$1" || ! "$1" =~ ^[0-9]+$ ]]; then 
	echo "Usage: ccd <number_of_levels>"
	return 1
fi
#construct the path to go up the specified number of levels
path=""
for ((i=0; i<$1; i++));do
	path+="../"
done

cd "$path" || echo "Failed to navigate."
