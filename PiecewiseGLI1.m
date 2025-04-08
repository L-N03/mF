I=imread('lingna.jpg');
figure(9);
I1=0.299.*I(:,:,1)+0.587.*I(:,:,2)+0.144.*I(:,:,3);%加权平均值
I1=im2double(I1);%归一化
subplot(2,2,1);
imshow(I),title('original image');
k=-2;
b=200;
I3=k.*I1+b/255;
subplot(2,2,2);
imshow(I3),title('k=-2 b=200');
k=-0.5;
b=100;
I4=k.*I1+b/255;
subplot(2,2,3);
imshow(I4),title('k=-0.5 b=100');
k=-1;
b=255;
I5=k.*I1+b/255;
subplot(2,2,4);
imshow(I5),title('k=-1 b=255');


