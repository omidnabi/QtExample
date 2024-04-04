#!/bin/bash

# Define the project directories
projects=("ExampleLib" "ExampleApp")

# Loop through each project directory
for project in "${projects[@]}"; do
    echo "Processing project: $project"

    # Navigate into the project directory
    cd "$project"

    # Check if the build directory exists
    if [ -d "build" ]; then
        # Remove the existing build directory
        echo "Removing existing build directory..."
        rm -rf build
    fi

    # Create a new build directory and navigate into it
    echo "Creating new build directory..."
    mkdir build && cd build

    # Configure and build the project
    echo "Configuring and building $project..."
    cmake .. -DCMAKE_PREFIX_PATH=~/Qt6/6.6.0/gcc_64/
    cmake --build .

    # Navigate back to the top-level directory
    cd ../..

    echo "$project build complete."
    echo "--------------------------------"
done

echo "All projects have been processed."

