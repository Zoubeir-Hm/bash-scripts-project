#!/bin/bash

# Test network connectivity with a given site
if [ -n "$1" ]; then
    echo "Pinging $1 ..."
    ping -c 4 "$1"
else
    echo "Usage: ping_test <hostname_or_ip>"
fi
