I = imread('1.bmp');
I = rgb2gray(I);
offsets = [0 1; -1 1; -1 0; -1 -1];
GLCM2 = graycomatrix(I,'NumLevels',8,'Offset',offsets);

out = GLCM_Features_new(GLCM2);
%stats = GLCM_Features(GLCM2); only 13 features