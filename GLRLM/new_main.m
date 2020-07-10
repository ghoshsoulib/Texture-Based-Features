I = imread('1.bmp');
I = rgb2gray(I);
% mask = ones(size(I(:,:,1)));
% quantize = 16;
% [SRE,LRE,GLN,RP,RLN,LGRE,HGRE]  = glrlm_new(I,quantize,mask);

[GLRLMS,SI]= grayrlmatrix(I);
[stats] = grayrlprops(GLRLMS);

s = stats(:);
fin = reshape(s,1,[]);