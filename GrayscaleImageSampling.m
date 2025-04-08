img=imread('lingna.jpg');
p=imresize(img,[512,512]);
i=rgb2gray(p);
i1=i(1:2:end,1:2:end);
i2=i(1:4:end,1:4:end);
i3=i(1:8:end,1:8:end);
i4=i(1:16:end,1:16:end);
i5=i(1:128:end,1:128:end);
figure(4);
subplot(2,3,1),imshow(i),title('o');
subplot(2,3,2),imshow(i1),title('256*256');
subplot(2,3,3),imshow(i2),title('128*128');
subplot(2,3,4),imshow(i3),title('64*64');
subplot(2,3,5),imshow(i4),title('32*32');
subplot(2,3,6),imshow(i5),title('4*4');




