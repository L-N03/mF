img=imread('lingna.jpg');
figure(12);
size(img);
J=imnoise(img,'gaussian',0,0.02);
K=zeros(667,500,3);
for i=1:4
    J=imnoise(img,'gaussian',0,0.02);
    J1=im2double(J);
    J2=imresize(J1,[667,500]);
    K=K+J2;
end
K=K/4;
subplot(1,3,1),imshow(img),title('原始图像');
subplot(1,3,2),imshow(J),title('加噪声后的图像');
subplot(1,3,3),imshow(K),title('相加求平均后的图像');