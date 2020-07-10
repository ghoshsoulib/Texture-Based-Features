function [ img1, img2, img3, img4 ] = four_parts( img )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[r,c] = size(img);

img1 = img(1:r/2, 1:c/2);
img2 = img(1:r/2, c/2+1:c);
img3 = img(r/2+1:r, c/2+1:c);
img4 = img(r/2+1:r, 1:c/2);



end

