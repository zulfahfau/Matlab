%I1 = imread('fasilkomgelap.png')
I2 = imread ('fasilkom.png')

%iNeg = 255 - I1
%imshow (iNeg)


%iSubstraction = I2 - I1
%imshow(iSubstraction)

%iMean = mean(I1(:))
%imshow(iMean)

%imshow(imadjust(I1, [0 1], [1 0]))
%imshow(imadjust(I1, [], [], 0.5))
%imshow(imadjust(I1, [], [], 1.5))

%I1 = imread('fasilkomgelap.png')
%a = min(I1(:));
%b = 255 / (max(I1(:)) - min(I1(:)));
%I_new = (I1 - a) .* b;
%imshow(I_new)
%imhist(I_new)

%I1 = imread('fasilkomgelap.png')
%imhist(I1)

%I1 = imread('fasilkomgelap.png')
%I_new = histeq (I1)
%imhist(I_new)
%imhist (I1)

%I1 = imread('fasilkom.png')
%I_noise = imnoise(I1, 'gaussian')
%I_noise = imnoise(I1, 'salt & pepper')
%I_noise = imnoise(I1, 'speckle')
%imshow(I_noise)

%I1 = imread('fasilkom.png')
%I_noise = imnoise(I1, 'gaussian')
%filter = fspecial('average', [3 3]);
%I_filter = imfilter(I_noise, filter);
%imshow(I_filter)

%I1 = imread('fasilkom.png')
%I_noise = imnoise(I1, 'gaussian')
%filter = fspecial('average', [7 7]);
%I_filter = imfilter(I_noise, filter);
%imshow(I_filter)
%I1-I_noise

I1 = imread('fasilkom.png')
I_noise = imnoise(I1, 'gaussian')
I_filter = medfilt2(I1, [7 7])
imshow(I_filter)