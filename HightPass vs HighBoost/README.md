### Image Processing Filters

This Scilab script demonstrates the application of high-pass and high-boost filters on grayscale images.

#### Description

The script includes functions to apply the following filters:
- **High-Pass Filter**: Removes low-frequency components from the image.
- **High-Boost Filter**: Enhances high-frequency components to sharpen the image.


### Functions Available

- **applyHighPassFilter(img, cutoffFrequency)**: Applies a high-pass filter to the input image.
- **applyHighBoostFilter(img, cutoffFrequency, A)**: Applies a high-boost filter to the input image with amplification factor `A`.
- **applyLowPassFilter(img, cutoffFrequency)**: Applies a low-pass filter to the input image.

### Processing an Image

```scilab
processImage(filename, cutoffFrequency, A);
```

- filename: Path to the image file.
- cutoffFrequency: Adjusts the cutoff frequency for high-pass and low-pass filters.
- A: Amplification factor for the high-boost filter. Play with A to achieve desired enhancement.

### Notes
- Adjust cutoffFrequency to control the filter's strength.
- Experiment with different values of A to achieve the desired enhancement effect.
- Comment out sections related to median filtering if not required, as they may consume additional processing time.