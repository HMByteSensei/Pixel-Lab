// Load the Image Processing Module
atomsLoad("IPCV");

// Function to apply a median filter
function imgMedFiltered = applyMedianFilter(img, windowSize)
    [rows, cols] = size(img);
    halfWindow = floor(windowSize / 2);
    imgMedFiltered = img;
    
    for i = 1 + halfWindow:rows - halfWindow
        for j = 1 + halfWindow:cols - halfWindow
            window = img(i - halfWindow:i + halfWindow, j - halfWindow:j + halfWindow);
            imgMedFiltered(i, j) = median(window(:));
        end
    end
endfunction

// Function to process and display an image
function processImage(filename)
    // Read the image file
    I = imread(filename);
    
    // Convert the image to grayscale
    imgGray = rgb2gray(I);
    
    // Display the original grayscale image
    subplot(2, 3, 1);
    imshow(imgGray);
    title("Original Grayscale");
    
    // Add salt & pepper noise
    Imgn_sp = imnoise(imgGray, 'salt & pepper', 0.1);
    
    // Display the noisy image (salt & pepper)
    subplot(2, 3, 2);
    imshow(Imgn_sp);
    title("Noisy Image (salt & pepper)");
    
    // Apply average (mean) filter to salt & pepper noisy image
    avgFilter = ones(3, 3) / 9; // 3x3 average filter
    imgAvgFiltered_sp = imfilter(Imgn_sp, avgFilter);
    
    // Display the average filtered image (salt & pepper)
    subplot(2, 3, 4);
    imshow(imgAvgFiltered_sp);
    title("Average Filtered (salt & pepper)");
    
    // Median filter is taking too much time so comment this block of code if you do not want median filter also comment block at line 55
    // Apply median filter to salt & pepper noisy image
    imgMedFiltered_sp = applyMedianFilter(Imgn_sp, 3); // 3x3 median filter
    
    // Display the median filtered image (salt & pepper)
    subplot(2, 3, 5);
    imshow(imgMedFiltered_sp);
    title("Median Filtered (salt & pepper) uncomment code to get this filter");

    // Add Gaussian noise
    Imgn_gauss = imnoise(imgGray, 'gaussian', 0, 0.01);
    
    // Display the noisy image (Gaussian)
    subplot(2, 3, 3);
    imshow(Imgn_gauss);
    title("Noisy Image (Gaussian)");
    
    // Apply average (mean) filter to Gaussian noisy image
    imgAvgFiltered_gauss = imfilter(Imgn_gauss, avgFilter);
    
    // Display the average filtered image (Gaussian)
    subplot(2, 3, 6);
    imshow(imgAvgFiltered_gauss);
    title("Average Filtered (Gaussian)");
    
    // Comment this block if you do not want this filter since it's taking too much time and also block starting at line 30
    // Apply median filter to Gaussian noisy image
    imgMedFiltered_gauss = applyMedianFilter(Imgn_gauss, 3); // 3x3 median filter
    
    // Display the median filtered image (Gaussian)
    subplot(2, 3, 6);
    imshow(imgMedFiltered_gauss);
    title("Median Filtered (Gaussian)");
endfunction

// If you want to select four images one by one uncomment commented lines by deleting "//" symbols
// If you want to select multiple images instead write "i = 1:n" where n is number of images you want to select
// Note more images = more time to process
filenames = [];
// for i = 1:4
    [filename, pathname] = uigetfile(["*.jpg"; "*.jpeg"; "*.png"], "Select an image file");
    if filename <> "" then
        filenames = [filenames; fullfile(pathname, filename)];
    else
        error("No file selected");
    end
// end

// Process each selected image
for i = 1:size(filenames, 1)
    // Create a new figure for each image
    figure('Position', [100, 100, 1200, 600]);
    processImage(filenames(i));
end
