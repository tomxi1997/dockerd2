#!/bin/bash

# Define the directory
DIRECTORY="$GITHUB_WORKSPACE/termux-packages/output"

cd $DIRECTORY

# Check if the directory exists
if [ -d "$DIRECTORY" ]; then
    # Loop through each file in the directory
    for FILE in "$DIRECTORY"/*.deb; do
        # Check if it's a file (not a directory)
            # Print the file name
            echo "$(basename "$FILE")"
            #tar -xf $(basename "$FILE")
            dpkg -x "$FILE"
            echo "解压'$(basename "$FILE")"
            echo "---------------------------------------"
        
    done



