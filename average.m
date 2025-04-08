i=imread('lingna1.jpg');
a=size(i)
I=imresize(i,[512,512]);
b=size(I);
figure(2);
subplot(1,2,1);
imshow(I),title('original image');
imR=im2double(I(:,:,1));
imG=im2double(I(:,:,2));
imB=im2double(I(:,:,3));
imRGB=round((imB+imG+imB)/3*255);
I(:,:,1)=imRGB;
I(:,:,2)=imRGB;
I(:,:,3)=imRGB;
subplot(1,2,2);
imshow(I);
title('average');
