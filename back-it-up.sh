#!/bin/bash

# Function to perform the backup
backup() {
    local source_path="$1"
    local destination_path="$2"

    # Check if source exists
    if [ ! -e "$source_path" ]; then
        echo "Error: Source path '$source_path' does not exist."
        return 1
    fi

    echo "Backing up '$source_path' to '$destination_path'..."
    
    # Attempt to create the tarball
    if tar -czvf "$destination_path" "$source_path"; then
        echo "Backup completed successfully."
        return 0
    else
        echo "Error: Backup failed."
        return 1
    fi
}

# Main logic
if [ "$#" -eq 2 ]; then
    # Use command-line arguments
    backup "$1" "$2"
    exit $?
else
    # Interactive mode
    echo "--- Backup Script ---"
    echo "Enter the source path to backup (file or directory):"
    read -r source_path
    
    echo "Enter the destination path (e.g., backup.tar.gz):"
    read -r destination_path

    if [ -z "$source_path" ] || [ -z "$destination_path" ]; then
        echo "Error: Source and destination paths cannot be empty."
        exit 1
    fi

    backup "$source_path" "$destination_path"
    exit $?
fi
