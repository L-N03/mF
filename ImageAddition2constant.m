img=imread('lingna.jpg');
figure(13);
p=imadd(img,75);
subplot(1,2,1),imshow(img),title('原图');
subplot(1,2,2),imshow(p),title('加常数后的图像');