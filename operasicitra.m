% F = imread ('cameraman.png');
% [r, c] = size(f);
% for x = 1 : r
%     for y = 1:c
%         G(x,y)= 255-F(x,y);
%     end
% end
% figure, imshow(F);
%figure, imshow(G);

% A = double(imread('cameraman.png'));
% B = double(imread('rice.png'));
% [r1, c1] = size(A);
% [r2, c2] = size(B);
% if(r1 == r2) && (c1 == c2)
%     for x = 1 : r1
%         for y = 1 : c1
%             C(x,y) = A(x,y) - B(x,y);
%         end
%     end
% end
% C = clipping (C);
% figure, imshow(uint8(A));
% figure, imshow(uint8(B));
% figure, imshow(uint8(C));


% A = double(imread('cameraman.png'));
% [r c] = size(A);
% for x = 1 : r
%     for y = 1 : c
%         B(x,y) = A(x,y) ./ 2;
%     end
% end
% B = clipping(B);
% figure, imshow(uint8(A));
% figure, imshow(uint8(B));



% A=imread('baboon.tiff');
% I=im2bw(A,0.5);
% B=imread('peppers.tiff');
% J=im2bw(B,0.5);
% [r1, c1] = size(I);
% [r2, c2] = size(J);
% for x = 1 : r1
%     for y = 1 : c1
%         C(x,y) = xor(I(x,y),J(x,y));
%     end
% end
% figure, imshow(C);


% Tx = 20;
% Ty = 50;
% A = imread('cameraman.png');
% [brs, kol] = size(A);
% for x = 1 : brs
%     for y = 1 : kol
%         B(x+Tx, y+Ty) = A(x,y);
%     end
% end
% B = B(1:brs,1:kol);
% figure, imshow(uint8(A));
% figure, imshow(uint8(B));



% I = imread('cameraman.png');
% [brs, kol] = size(I);
% x1 = 50;
% x2 = 200;
% y1 = 50;
% y2 = 200;
% I(1:x1,:) = 0;
% I(x2:brs,:) = 0;
% I(:,1:y1) = 0;
% I(:,y2:kol) = 0;
% imshow(I); 

% I = imread('cameraman.png');
% [brs, kol] = size(I);
% J = zeros(brs,kol);
% mirror = floor(kol/2);
% for x = 1 : brs-1
%     for y = 1 : kol-1
%         J(x,y) = I((2*mirror)-x, y);
%     end
% end
% figure, imshow(uint8(J)); 



I = imread('cameraman.png');
[brs, kol] = size(I);
J = zeros(brs,kol);
mirror = floor(brs/2);
for x = 1 : brs-1
    for y = 1 : kol-1
        J(x,y) = I(x, (2*mirror)-y);
    end
end
figure, imshow(uint8(J)); 