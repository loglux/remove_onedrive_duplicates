# Remove OneDrive Duplicate Files Script

## Description
This script is designed to remove duplicate files that have been created as a result of relocating OneDrive content. Often, during the process of moving files within or across different storage devices, Microsoft OneDrive may create duplicates with the suffix '- Copy' in their filenames. This tool automates the clean-up of these unnecessary copies, streamlining the organization of your files and reclaiming storage space.

## How It Works
The script searches through the specified directory (or the default directory if none is specified) for any files that end with '- Copy' in their name. Once identified, it removes these files from your system. Additionally, the script generates a report listing all the files it has deleted, providing a clear record of its actions for review.

## Usage
To run the script, simply execute it from the command line, optionally passing the target directory as an argument. If no argument is provided, the script will default to the pre-defined directory specified within the script.

Example:
```bash
./rm_dups.sh /path/to/target/directory
