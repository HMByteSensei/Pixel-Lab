# Remove Channel from Image using Scilab

This Scilab script removes the red channel from an RGB image, leaving only the green and blue channels intact. You can adjust the script to reove other channels (see **Notes** section or comments within code).

## Overview

The script performs the following tasks:

- Defines a function `uklonicrvenu` to remove the red channel from an RGB image.
- Prompts the user to select an image file (`*.jpg`, `*.jpeg`, `*.png`) using `uigetfile`.
- Reads the selected image and applies the `uklonicrvenu` function to remove the red channel.
- Displays the original image and the image with the red channel removed using `subplot` and `imshow`.

## Example
![Example of input and output](https://github.com/HMByteSensei/Image-Processing/blob/main/Channel%20Remover/Images/Example%20input_output.png?raw=true)

## Usage

1. **Prerequisites**:
   - Install Scilab.

2. **Running the Script**:
   - Execute the script in Scilab.
   - Follow the prompt to select an image file.

3. **Output**:
   - Displays two subplots:
     - Subplot 1: Shows the original RGB image.
     - Subplot 2: Displays the image with the red channel removed (`imgNoRed`).

4. **Notes**:
   - Modify the script to remove other color channels (`Green` or `Blue`) by adjusting the `img(:,:,1)`, `img(:,:,2)`, or `img(:,:,3)` lines accordingly.

