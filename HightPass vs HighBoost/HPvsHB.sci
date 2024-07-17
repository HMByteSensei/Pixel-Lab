// Load the Image Processing Module
atomsLoad("IPCV");

// Function to apply a high-pass filter
function imgHPFiltered = applyHighPassFilter(img, cutoffFrequency)
    [rows, cols] = size(img);
    imgFFT = fftshift(fft2(double(img))); // Compute the 2D Fourier Transform
    [u, v] = meshgrid(-(cols/2):(cols/2-1), -(rows/2):(rows/2-1)); // Create frequency grid
    D = sqrt(u.^2 + v.^2); // Compute distance from the center
    H = double(D > cutoffFrequency); // Define high-pass filter
    imgHPFiltered = real(ifft(ifftshift(imgFFT .* H))); // Apply high-pass filter in frequency domain
endfunction

// Function to apply a high-boost filter
function imgHBFiltered = applyHighBoostFilter(img, cutoffFrequency, A)
    imgLPFiltered = applyLowPassFilter(img, cutoffFrequency); // Apply low-pass filter
    imgHPFiltered = img - imgLPFiltered; // Compute high-pass component
    imgHBFiltered = A * imgHPFiltered + img; // Apply high-boost filter
endfunction

// Function to apply a low-pass filter
function imgLPFiltered = applyLowPassFilter(img, cutoffFrequency)
    [rows, cols] = size(img);
    imgFFT = fftshift(fft2(double(img))); // Compute the 2D Fourier Transform
    [u, v] = meshgrid(-(cols/2):(cols/2-1), -(rows/2):(rows/2-1)); // Create frequency grid
    D = sqrt(u.^2 + v.^2); // Compute distance from the center
    H = double(D <= cutoffFrequency); // Define low-pass filter
    imgLPFiltered = real(ifft(ifftshift(imgFFT .* H))); // Apply low-pass filter in frequency domain
endfunction

// Function to process and display an image with high-pass and high-boost filters
function processImage(filename, cutoffFrequency, A)
    // Read the image file
    I = imread(filename);
    
    // Convert the image to grayscale
    imgGray = rgb2gray(I);
    
    // Create a new figure for each image
    figure('Position', [100, 100, 1200, 600]);
    
    // Display the original grayscale image
    subplot(2, 3, 1);
    imshow(imgGray);
    title("Original Grayscale");
    
    // Apply high-pass filter
    imgHPFiltered = applyHighPassFilter(imgGray, cutoffFrequency);
    
    // Display the high-pass filtered image
    subplot(2, 3, 2);
    imshow(imgHPFiltered);
    title("High-Pass Filtered");
    
    // Apply high-boost filter
    imgHBFiltered = applyHighBoostFilter(imgGray, cutoffFrequency, A);
    
    // Display the high-boost filtered image
    subplot(2, 3, 3);
    imshow(imgHBFiltered);
    title("High-Boost Filtered (A = " + string(A) + ")");
endfunction

// Select four images one by one
filenames = [];
[filename, pathname] = uigetfile(['*.jpg'; '*.jpeg'; '*.png'], 'Select an image file');
if filename <> "" then
    filenames = [filenames; fullfile(pathname, filename)];
else
    error("No file selected");
end

// Set cutoff frequency and amplification factor
cutoffFrequency = 0.1;
A = 2;

// Process each selected image
for i = 1:size(filenames, 1)
    processImage(filenames(i), cutoffFrequency, A);
end
