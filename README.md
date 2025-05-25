# Soil Classification with Deep Learning

This repository contains solutions for soil classification challenges using advanced deep learning techniques. The project aims to accurately classify soil types from images using different neural network architectures.

## Project Structure

The repository is organized into two main challenges:

```
.
├── README.md
├── challenge-1/         # Vision Transformer (ViT) approach
│   ├── requirnments.txt # Dependencies for challenge 1
│   ├── data/            # Data scripts and storage
│   ├── docs/            # Documentation images
│   └── notebooks/       # Analysis and model notebooks
│
└── challenge-2/         # CNN-based approach
    ├── requirnments.txt # Dependencies for challenge 2
    ├── data/            # Data scripts and storage
    └── docs/            # Documentation images
```

## Challenge 1: Soil Classification with Vision Transformer

Challenge 1 uses a Vision Transformer (ViT) model for soil type classification.

### Features

- Data loading and preprocessing using PyTorch's Dataset and DataLoader
- Pre-trained Vision Transformer (ViT) model fine-tuned for soil classification
- Training pipeline with cross-entropy loss and AdamW optimizer
- Learning rate scheduling for optimal convergence
- Evaluation using weighted F1 score
- Submission file generation for Kaggle competition

### Getting Started

1. **Setup Environment**

   ```bash
   cd challenge-1
   pip install -r requirnments.txt
   ```

2. **Download the Dataset**

   ```bash
   cd data
   chmod +x download.sh
   ./download.sh
   ```

3. **Run the Notebook**

   Open and run the notebook at `notebooks/soil-classification-999.ipynb` using Jupyter or VS Code

## Challenge 2: Soil Classification with CNN

Challenge 2 implements a Convolutional Neural Network (CNN) approach to soil classification.

### Features

- CNN architecture optimized for soil texture and composition recognition
- Data augmentation techniques specific to soil imagery
- Custom training and evaluation pipeline

### Getting Started

1. **Setup Environment**

   ```bash
   cd challenge-2
   pip install -r requirnments.txt  # Note: you need to populate this file first
   ```

2. **Download the Dataset**

   ```bash
   cd data
   chmod +x download.sh
   ./download.sh
   ```

## Technologies Used

- **Python**: Core programming language
- **PyTorch**: Deep learning framework
- **torchvision**: Computer vision utilities and pre-trained models
- **scikit-learn**: Evaluation metrics and utilities
- **pandas**: Data manipulation
- **numpy**: Numerical operations
- **matplotlib/seaborn**: Data visualization
- **Pillow**: Image processing

## Model Architectures

### Challenge 1: Vision Transformer (ViT)

The Vision Transformer approach divides images into fixed-size patches, linearly embeds each patch, adds position embeddings, and feeds the resulting sequence of vectors to a standard Transformer encoder. This architecture has proven effective for image classification tasks, demonstrating strong performance on soil type recognition.

### Challenge 2: Convolutional Neural Network (CNN)

The CNN-based approach leverages hierarchical feature extraction to identify patterns in soil texture, color, and composition. This traditional computer vision architecture provides a complementary approach to the ViT model.

## Dataset

The project uses the Soil Classification dataset from Kaggle, which includes:
- Training images of various soil types
- Test images for prediction
- Ground truth labels for the training set

## Results

### Challenge 1
The Vision Transformer (ViT) model achieved a perfect F1 score of 1.0 on the evaluation dataset, demonstrating exceptional performance in soil type classification. This represents 100% accuracy in identifying all soil types correctly across the entire dataset.

### Challenge 2
Performance metrics, including weighted F1 scores, are calculated to evaluate model performance. The notebooks contain detailed analysis of the results.


## Acknowledgments

- Data provided by the Soil Classification Kaggle competition
- Vision Transformer implementation based on the original [ViT paper](https://arxiv.org/abs/2010.11929)