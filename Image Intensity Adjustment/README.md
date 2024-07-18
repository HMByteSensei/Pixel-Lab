# Image Subtraction for Background Illumination Removal

This Scilab script demonstrates the use of image subtraction as a step in complex image processing procedures. It is commonly used to mitigate variations in background lighting, thereby enhancing the visibility and analysis of foreground objects.

## Task Description

The script addresses the following task:

- **Objective**: Enhance visibility of text in an image (`InputImage.jpg`) by removing variations in background illumination using image subtraction.
- **Input Images**: `InputImage.jpg` (main image with text) and `InputLightfield.jpg` (image capturing background illumination).
- **Output**: The resulting image should highlight the text by effectively removing the background illumination variations.

## Images

| Image 1: Input.jpg                      | Image 2: InputLightField.jpg                      | Image 3: Output.jpg                      |
|-----------------------------------------|-----------------------------------------|-----------------------------------------|
| ![input.jpg](https://github.com/HMByteSensei/Image-Processing/blob/main/Image%20Intensity%20Adjustment/Images/InputImage.jpg?raw=true)          | ![inputLightField.jpg](https://github.com/HMByteSensei/Image-Processing/blob/main/Image%20Intensity%20Adjustment/Images/InputLightField.jpg?raw=true)          | ![output.jpg](https://github.com/HMByteSensei/Image-Processing/blob/main/Image%20Intensity%20Adjustment/Images/Output.png?raw=true)          |


## Script Functionality

1. **Load Image Processing Library**: Loads the `IPCV` library for image processing.

2. **Load Images**:
   - Prompts the user to select images using `uigetfile()`.

3. **Convert Images to Grayscale**:
   - Converts both images to grayscale using `rgb2gray()`.

4. **Adjust Image Intensity**:
   - Enhances the intensity of the illumination image (`InputLightfield.jpg`) using `imadjust()`.

5. **Perform Image Subtraction**:
   - Computes the final image by subtracting the adjusted illumination image from the main image (`InputImage.jpg`). This step helps in reducing background variations.

6. **Display Result**:
   - Shows the resulting processed image using `imshow()`.

## Usage

To use this script:
- Ensure Scilab is installed and the `IPCV` library is loaded.
- Run the script and follow the prompts to select `InputImage.jpg` and `InputLightfield.jpg` images.
- Adjust the subtraction operation as needed to effectively highlight the text.

## Requirements

- Scilab installed on your system.
- `IPCV` library installed in Scilab.

## Notes

- Negative pixel values may appear during subtraction. Consider appropriate handling or normalization methods to mitigate this issue before applying the subtraction operator.

