#!/bin/bash

# Define the file types and their corresponding directories
declare -A FILE_TYPES
FILE_TYPES=(
    ["Documents"]="pdf docx txt"
    ["Images"]="jpg jpeg png gif"
    ["Videos"]="mp4 mkv flv"
    ["Music"]="mp3 wav"
    ["Archives"]="zip tar gz"
)

# Function to organize files
organize_directory() {
    local directory=$1

    # Create directories for each file type if they don't exist
    for folder in "${!FILE_TYPES[@]}"; do
        mkdir -p "$directory/$folder"
    done

    # Move files to their corresponding directories
    for file in "$directory"/*; do
        if [[ -f $file ]]; then
            extension="${file##*.}"
            moved=false
            for folder in "${!FILE_TYPES[@]}"; do
                if [[ ${FILE_TYPES[$folder]} =~ $extension ]]; then
                    mv "$file" "$directory/$folder/"
                    moved=true
                    break
                fi
            done
            if [[ $moved == false ]]; then
                mkdir -p "$directory/Others"
                mv "$file" "$directory/Others/"
            fi
        fi
    done
}

# Main script
read -p "Enter the directory to organize: " directory
organize_directory "$directory"
echo "Files have been organized."
