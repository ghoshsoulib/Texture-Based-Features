function [crop_image] = crop_image(img,percentage)

[r,c] = size(img);
fin_row = floor(r*percentage/100);
crop_image = img(1:fin_row,1:c);


end

