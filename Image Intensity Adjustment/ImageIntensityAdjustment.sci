// Load the image processing library
atomsLoad("IPCV");

// Load the images
I = uigetfile('*.jpg', '*.png');
img1 = imread(I); // Prva slika s tekstom

I2 = uigetfile('*.jpg', '*.png');
img2 = imread(I2); // Druga slika, osvjetljenje

// Convert the images to grayscale
img1_gray = rgb2gray(img1);
img2_gray = rgb2gray(img2);

// Adjust the intensity of the illumination image
img2_gray_adj = imadjust(img2_gray);

d=double(uint8(img2_gray));
d=double(uint8(img1_gray));

img = imsubtract(img1, imsubtract(img2, 125));

// Display the result
imshow(img);
