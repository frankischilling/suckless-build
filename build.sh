#!/bin/bash

# Directories to navigate into before building
project_directories=("dmenu" "dwm" "slstatus" "st")

# Get the script's directory
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Loop through each directory, clean, build, and install
for project in "${project_directories[@]}"; do
    echo "Building $project..."
    cd "$script_dir/$project" || exit 1

    # Clean, build, and install using sudo make clean install
    sudo make clean install
done

echo "Build process completed for all projects."
