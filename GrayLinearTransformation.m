I=imread("lingna.jpg");
figure(7);
A=rgb2gray(I);
subplot(2,3,1);
imshow(A);
B=A+100;
subplot(2,3,2);
imshow(B);
C=2.5*A;
subplot(2,3,3);
imshow(C);
D=0.2*A;
subplot(2,3,4);
imshow(D);
E=0.8*A-100;
subplot(2,3,5);
imshow(E);
F=-im2double(A)+1;
subplot(2,3,6);
imshow(F);