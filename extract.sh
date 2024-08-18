#!/bin/bash

# Select an archive file
FILE=$(zenity --file-selection --title="Select an archive")

# Check if the user canceled the dialog
if [ $? -eq 0 ]; then
    echo "Selected file: $FILE"
else
    echo "No file selected."
    exit 1  # Exit the script if no file was selected
fi

# Select a folder to extract to
FOLDER=$(zenity --file-selection --directory --title="Select a folder to extract to")

# Check if the user canceled the dialog
if [ $? -eq 0 ]; then
    7z x "$FILE" -o"$FOLDER"
else
    echo "No folder selected."
    exit 1  # Exit the script if no folder was selected
fi

