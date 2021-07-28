
I1 = imread('fasilkomgelap.png')
I2 = imread ('fasilkom.png')

iSubstraction = imsubstract(I2-I1)
%iSubstraction = I2 - I1
imshow(iSubstraction)