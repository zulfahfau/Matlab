batiksongket = imread ('songket_palembang.jpg')
%imshow(batiksongket);
resize128 = imresize(batiksongket,[128,128]); 
%imshow(resize128);
grayscale = rgb2gray(resize128);
%imshow(grayscale);
histeq = histeq(grayscale);


canny = edge(histeq,'canny');

subplot(2,2,1); imshow(resize128); title('original');
subplot(2,2,2); imshow(grayscale); title('grayscale');
subplot(2,2,3); imshow(histeq); title('histogram Equalization');
subplot(2,2,4); imshow (canny); title('Deteksi tepi canny');