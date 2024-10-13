#!/bin/bash

# Clean the system by removing temporary files and cache

echo "Cleaning up the system..."
sudo apt-get clean
sudo apt-get autoremove -y
sudo rm -rf /tmp/*
echo "Cleanup completed."
