%A=imread('lingna.jpg');
%I=rgb2gray(A);
%subplot(2,1,1);
%imshow(I);
%%a=app.EditField_Scale.Value;
%a=3;
%Scale=imresize(I,0.5,"nearest");
%
%%imshow(Scale,'Parent',app.UIAxes);
%subplot(2,1,2);
%imshow(Scale);
A = imread('lingna.jpg');
a = 10; 
aa = 0.1;
B=imresize(A,a,'nearest');
C=imresize(A,aa,'nearest');
figure;
imshow(A);
title('原图像')
figure;
imshow(B);
title('放大2倍图像')
figure;
imshow(C);
title('放大0.5倍图像')
