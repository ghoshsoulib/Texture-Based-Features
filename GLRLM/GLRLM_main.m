function [fin] = GLRLM_main(I)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

warning('off');

[GLRLMS,~]= grayrlmatrix(I);
[stats] = grayrlprops(GLRLMS);

s = stats(:);
fin = reshape(s,1,[]);
end

