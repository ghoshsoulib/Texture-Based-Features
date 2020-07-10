function [histogram] = RLBP(image, dictR)
% dictU is generated by MapU function
% Histogram for a given image

histogram = zeros(1, 36);

[h, d] = size(image);

im = padarray(image, [1, 1], 0);

for i = 2:h+1
    for j = 2:d+1
        % Segment of 3 x 3 for a certain pixel
        segment = im(i-1:i+1, j-1:j+1);
        
        % curr indx
        curr_indx = dictR(gridCalulatorForLBP(segment) + 1);
        histogram(curr_indx) = histogram(curr_indx) + 1; 
    end
end

histogram = histogram./(h*d);
end

