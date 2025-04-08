A=imread('lingna.jpg');
figure(24);
I=rgb2gray(A);
subplot(1,2,1);
imshow(I);
title('原图');
[M,N]=size(I);
times=1;%缩放倍数
J1=zeros(floor(M*times),floor(N*times));
%y=floor(x)函数将x中元素取整，值y为不于本的最小整数
J=im2uint8(J1);%J为uint8类型矩阵
for i=1:floor(M*times)
    for j=1:floor(N*times)
        x=floor(i/times);
        y=floor(j/times);
        if (x<M && y<N)
            J(i,j)=I(x,y);
        end
    end
end
subplot(1,2,2);
imshow(J);
title('缩放后的图像');
