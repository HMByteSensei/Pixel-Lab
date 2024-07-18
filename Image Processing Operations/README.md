# Image Processing Script

This script demonstrates basic image processing operations using Scilab.

## Description

The script performs the following operations:

1. **Load Image Processing Library**: Loads the `IPCV` library for image processing.

2. **Load Images**:
   - Loads two images (`img1` and `img2`) from specified paths. Adjust the paths accordingly.

3. **Convert Images to Grayscale**:
   - Converts `img1` and `img2` to grayscale using `rgb2gray()` function.

4. **Adjust Image Intensity**:
   - Adjusts the intensity of `img2` using `imadjust()` function.

5. **Perform Image Subtraction**:
   - Computes `img` by subtracting adjusted `img2` from `img1`, with a subtraction constant of 125.

6. **Display Result**:
   - Displays the resulting image `img` using `imshow()`.

## Usage

To use this script:
- Ensure Scilab is installed and the `IPCV` library is loaded.
- Run the script in Scilab console or editor.

## Requirements

- Scilab installed on your system.
- `IPCV` library installed in Scilab.

## Notes

- This script allows you to highlight a specific object in an image. For this to work, your second image should feature a circle or a similar shape that encircles the object of interest, with the area outside of it appearing black, and the area inside of it appearing white.
- Your first image is original image.
- This script assumes the images are accessible and in the correct format supported by Scilab.

