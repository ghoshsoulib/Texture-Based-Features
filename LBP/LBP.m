function [histogram] = LBP(image)
% Histogram for a given image

[~,~,w] = size(image);
if(w==3)
    image = rgb2gray(image);
end

histogram = zeros(1, 256);

[h, d] = size(image);

im = padarray(image, [1, 1], 0);

for i = 2:h+1
    for j = 2:d+1
        % Segment of 3 x 3 for a certain pixel
        segment = im(i-1:i+1, j-1:j+1);
        
        % curr indx
        curr_indx = gridCalulatorForLBP(segment) + 1;
        histogram(curr_indx) = histogram(curr_indx) + 1; 
    end
end

histogram = histogram./(h*d);
end

