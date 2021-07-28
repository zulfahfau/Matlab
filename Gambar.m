function a=imagediff(I1,I2)
%membaca foto
I1 = imread('086.jpg');
I2 = imread ('087.jpg');
%menampilkan foto
imshow(I1)

%mengubah rgb - greyscale foto 086
I3 = rgb2gray(I1);
I4 = rgb2gray(I2);

%mencari rata2 intensitas 
meanI3 = mean2(I3);
meanI4 = mean2 (I4);

[row, col, lay] = size(I2);
for i = 1:row
    for j = 1:col
        if



