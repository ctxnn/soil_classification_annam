#!/bin/bash

# Script to download the "Soil Classification- Part 2" dataset from Kaggle

# Exit immediately if a command exits with a non-zero status
set -e

# Check if kaggle is installed
if ! command -v kaggle &> /dev/null
then
    echo "The 'kaggle' CLI is not installed. Please install it first: pip install kaggle"
    exit 1
fi

# Check if Kaggle API credentials exist
if [ ! -f ~/.kaggle/kaggle.json ]; then
    echo "Kaggle API credentials not found. Please place your kaggle.json in ~/.kaggle/"
    exit 1
fi

# Set permissions for kaggle.json
chmod 600 ~/.kaggle/kaggle.json

# Create a directory for the dataset
mkdir -p soil_classification_part2
cd soil_classification_part2

# Download the dataset
kaggle competitions download -c soil-classification-part-2

# Unzip the dataset
unzip -o soil-classification-part-2.zip

echo "Download and extraction complete."
