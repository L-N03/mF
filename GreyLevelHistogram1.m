I=imread("lingna.jpg");
figure(6)
f=rgb2gray(I);
subplot(3,2,1);
imshow(f);
subplot(3,2,2);
imhist(f,256);
g1=imadjust(f,[0,1],[0,1]);%灰度转换，实现明暗转换（负片图像）
subplot(3,2,3);
imshow(g1);
subplot(3,2,4);
imhist(g1,256);
g2=imadjust(f,[0.5,0.75],[0,1]);%将0.5到0.75的灰度级扩展到范围[0,1]
subplot(3,2,5);
imshow(g2);
subplot(3,2,6);
imhist(g2,256);
