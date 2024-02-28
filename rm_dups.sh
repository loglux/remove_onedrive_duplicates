#!/bin/bash

# Check if a directory is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 /path/to/your/directory"
    exit 1
fi

# Use the provided directory
search_dir="$1"

# Temporary file to store the list of duplicate files
report_file="duplicate_files_report.txt"

# Empty the report file
> "$report_file"

# Prompt the user for confirmation to delete all files without individual confirmations
read -p "Remove all '- Copy' files without individual confirmations? (yes/no) " confirm
if [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]]; then
    find "$search_dir" -type f -name "* - Copy.*" \
        -exec echo "Removing duplicate file: {}" \; \
        -exec echo "{}" >> "$report_file" \; \
        -exec rm -f {} \;
    echo "All duplicate '- Copy' files have been removed. A report of the removed files has been saved to $report_file."
else
    echo "Operation canceled. No files were removed."
fi
