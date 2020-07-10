cmn_fld = 'E:\collage_research_work\DATA\feature data_set\new dataset for TALIP\asamme neumerals\assame digit\';
savefile = ('E:\collage_research_work\feature\paper writting\TALIP\CSV\glcm.csv');
csv = fopen(savefile, 'w');
maxm = 325;
for i=1:maxm
    st = strcat('attr_', num2str(i));
    fprintf(csv, '%s,',st);
end
fprintf(csv,'\n');

for i = 0:9
    i
    a = num2str(i);
    folder_in = strcat(cmn_fld,a,'\');
    
    listing = dir(strcat(folder_in,'*.','png'));
    file_names = {listing.name};
    num_pages = length(file_names);
    for j = 1:num_pages
        img = imread(strcat(folder_in,file_names{j}));
        img = imresize(img,[64 64]);
        [r,c] = size(img);
        for xx = 1:r
            for yy = 1:c
                if img(xx,yy) == 1
                    imgn(xx,yy) = 255;
                else
                    imgn(xx,yy) = 0;
                end
            end
        end
        
        a = GLCM_main(imgn);
        class = strcat('a',num2str(i));
        l = length(a);
        for k=1:l
            fprintf(csv, '%f,', a(k));
        end
        fprintf(csv, '%s\n', class);
    end
end
fclose(csv);


