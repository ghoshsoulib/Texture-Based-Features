cmn_fld = 'E:\collage_research_work\Form Processing\review\data\CC_soulib\';
savefile = ('E:\collage_research_work\Form Processing\review\CSV\RILBP_32_1.csv');
csv = fopen(savefile, 'w');

dictR = MapR();

maxm = 36+1;
for i=1:maxm
    st = strcat('attr_', num2str(i));
    fprintf(csv, '%s,',st);
end
fprintf(csv,'\n');

for i = 1:2
    
    a = num2str(i);
    folder_in = strcat(cmn_fld,a,'\');
    listing = dir(strcat(folder_in,'*.','bmp'));
    file_names = {listing.name};
    num_pages = length(file_names);
    num_pages
    for j = 1:num_pages
        img = imread(strcat(folder_in,file_names{j}));
        [~,~,w] = size(img);
        if(w ==3)
            img = rgb2gray(img);
        end
        
        img = imresize(img,[32 32]);
        
        a = RLBP(img, dictR);
        
        class = strcat('a',num2str(i));
        
        l = length(a);
        for k=1:l
            fprintf(csv, '%f,', a(k));
        end
        
        fprintf(csv, '%s\n', class);
        
    end
    
end

fclose(csv);




    