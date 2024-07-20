function noredimg=uklonicrvenu(img)
/* if you want to remove other chanel change following line to:
    img(:,:,1) → Red
    img(:,:,2) → Green
    img(:,:,3) → Blue
*/
    img(:,:,1)=0; // as you can see I am removing only red channel here, but you can edit it if you want to remove other channels
    noredimg = img;
endfunction

img = uigetfile()
img = imread(img)
imgNoRed = uklonicrvenu(img)
subplot(2,2,1)
imshow(img)
subplot(2,2,2)
imshow(imgNoRed)
