#!/bin/bash

# This script downloads the Soil Classification dataset from Kaggle

# 1. Ensure kaggle CLI is installed
if ! command -v kaggle &> /dev/null
then
    echo "kaggle CLI not found. Install it with: pip install kaggle"
    exit 1
fi

# 2. Ensure Kaggle API credentials are set up
if [ ! -f ~/.kaggle/kaggle.json ]; then
    echo "Kaggle API credentials not found. Please upload your kaggle.json to ~/.kaggle/"
    exit 1
fi

chmod 600 ~/.kaggle/kaggle.json

# 3. Download the dataset
kaggle competitions download -c soil-classification -p ./soil_classification_data

# 4. Unzip the dataset
unzip -q ./soil_classification_data/soil-classification.zip -d ./soil_classification_data

echo "Download and extraction complete. Files are in ./soil_classification_data"
