%%%%%%   batchFormation()

function [a,csv]=batchFormation(dir_in, file_ext)
disp('WAIT! Execution begining...');

% list of files in the directory name with the input file extension
listing = dir(strcat(dir_in,'*.',file_ext));
file_names = {listing.name};

% number of pages in the directory with this file extension
num_pages = length(file_names);

%display(num_pages);
fprintf('Total number of pages = %d\n', num_pages);
 
 
% process all pages in the directory
savefile = 'E:\collage_research_work\feature\rohit_manosij da\csv\GLCM_arabic.csv';
csv = fopen(savefile, 'w');


maxm = 77;
for i=1:maxm
    st = strcat('attr_', num2str(i));
    fprintf(csv, '%s,',st);
end

fprintf(csv,'\n');


for i = 1:num_pages
    dd = file_names{i};
    imgNum = str2double(dd(end-4));
    % load the image from the directory
    fprintf('processing_page = %d\n', i);
    img = imread(strcat(dir_in,file_names{i}));
    img = rgb2gray(img);
    
    a = GLCM_main(img);
    
    class = strcat('a',num2str(imgNum));
    
    l = length(a);
    for k=1:l
        fprintf(csv, '%f,', a(k));
    end
    
    fprintf(csv, '%s\n', class);

end

disp('WOW! Successful Execution...');
tts('Your code is finished successfully. Please check the result');
fclose(csv);
end
