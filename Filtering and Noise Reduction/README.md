# Scilab Image Processing Script

Author: Muhamed Husić

---

This Scilab script performs basic image processing operations including noise addition and filtering.

## Overview

The script is designed to process images by applying various filters to reduce noise and enhance image quality.

## Screenshot
![Output example](https://github.com/HMByteSensei/Image-Processing/blob/main/Filtering%20and%20Noise%20Reduction/ExampleOutput.png?raw=true)

## Features

- **Noise Addition:**
  - Adds salt & pepper or Gaussian noise to grayscale images.

- **Filtering:**
  - Applies average (mean) and median filters for noise reduction and image enhancement.

- **Image Display:**
  - Displays original, noisy, and filtered images using subplot arrangements.

## Usage

### Running the Script

1. **Setup:**
   - Ensure Scilab is installed and running on your system.

2. **Processing:**
   - After running the script select image you would like to process.

3. **Visualization:**
   - View the processed images in a subplot layout showing original, noisy, and filtered versions.

### Notes

- **Median Filter:** 
  - The median filtering (`applyMedianFilter`) section may take longer to process due to its computational nature (from line 30 in code).
  - To reduce processing time, consider commenting or deleting the median filtering section (`imgMedFiltered_sp` and `imgMedFiltered_gauss`) if it is not required (from line 55 in code).