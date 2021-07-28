function J = J(I,ShX,ShY)
m = size(I,1);
n = size(I,2);
r = m*ShX;
c = n*ShY;
J = zeros(r,c);
for x = 1 : m
    for y = 1 : n
        J((x-1)*ShX+1 : x*ShX, (y-1)*ShY+1 : y*ShY) = I(x,y);
    end
end
I = imread('cameraman.png');
ShX = 2;
ShY = 1;
J = scaling(I,ShX,ShY);
imshow(uint8(J));