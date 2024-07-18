// Load the image processing library
atomsLoad("IPCV");

// Load the images
img1 = imread("path to a photo with txt"); // Prva slika s tekstom
img2 = imread("path to a photo with lighting"); // Druga slika, osvjetljenje

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
