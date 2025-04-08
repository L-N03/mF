I=imread("lingna.jpg");
a=rgb2gray(I);
subplot(1,2,1);
imshow(a);
subplot(1,2,2);
imhist(a,256);
