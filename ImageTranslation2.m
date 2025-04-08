A=imread('lingna.jpg');
figure(20);
I=rgb2gray(A);
a=140;b=160;
J1=imtranslate(I,[a,b]);
subplot(2,2,1);
imshow(J1);
J2=imtranslate(I,[-a,b]);
subplot(2,2,2);
imshow(J2);
J3=imtranslate(I,[a,-b]);
subplot(2,2,3);
imshow(J3);
J4=imtranslate(I,[-a,-b]);
subplot(2,2,4);
imshow(J4);