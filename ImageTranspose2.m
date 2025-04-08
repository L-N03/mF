A=imread('lingna.jpg');
figure(23);
I=rgb2gray(A);
subplot(1,2,1);
imshow(I);
title('原图');
A = [1 0.5 0; 0 1 0; 0 0 1];
tform = affinetform2d(A);
J = imwarp(I,tform);
subplot(1,2,2);
imshow(J);
title('仿射变换');


