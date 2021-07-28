
clear;
cd('C:\Users\ASUS\Desktop\matlab');
datasetku={'S1';'S2'};
jmlkls=length(datasetku);
cd(char(datasetku(n)));
    datacitra=dir('*.jpg');
    jmldata = length(datacitra);
    for i=1:jmldata
        filename=datacitra(i).name;
        citrai=rgb2gray(imread(filename));
    end