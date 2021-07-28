%membuat function imagediff yang memiliki 2 input masukan gambar
function a =imagediff(I1,I2)
%membaca foto menggunakan imread
I1 = imread('086.jpg');
I2 = imread ('087.jpg');

%menampilkan foto menguunakan imshow
%imshow(I1)

%mengubah rgb - greyscale foto 086
I3 = rgb2gray(I1);
I4 = rgb2gray(I2);

%mencari rata2 intensitas dengan menggunakan mean2 
meanI3 = mean2(I3);
meanI4 = mean2 (I4);

%untuk menghitung per pixelnya dilakukan looping, dari 1x1 sampe habis row
%nya baru columnnya diitung. kalau itensitasnya diatas rata2/sama dengan rata2 yang kita udh
%cari diatas berarti dikali 2 
%tapi kalau intensitasnya dibawah mean berarti dikali 0.5
[row, col, lay] = size(I2);
for i = 1:row
    for j = 1:col
        if I3(i,j)< meanI3
           I3(i,j) = I3(i,j)*0.5;
        elseif I3(i,j)> meanI3
           I3(i,j) = I3(i,j)*2;
        elseif I3(i,j)== meanI3
           I3(i,j) = I3(i,j)*2;
        end
    end
end

for i = 1:row
    for j = 1:col
        if I4(i,j)< meanI4
           I4(i,j) = I4(i,j)*0.5;
        elseif I4(i,j)> meanI4
           I4(i,j) = I4(i,j)*2;
        elseif I4(i,j)== meanI4
           I4(i,j) = I4(i,j)*2;
        end
    end
end
%

differences = I4-I3;
imshow(differences);






