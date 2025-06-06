A=imread('lingna.jpg');
I=rgb2gray(A);
subplot(1,2,1);
imshow(I);
title('原图');
[M,N]=size(I);
ang=30;%旋转30度
%J1=zeros（floor(M*times),floor(N*times));
%y=fllor(x)函数将x中的元素取整，值y为不小于本的最小整数
J=I;%J为uint8类型的矩阵
for i=1:M
    for j=1:N
        x=floor((i-M/2)*cos(ang*pi/180)-(j-N/2)*sin(ang*pi/180)+0.5+M/2);
        y=floor((j-N/2)*cos(ang*pi/180)+(i-M/2)*sin(ang*pi/180)+0.5+N/2);
        if ((x<M) && (y<N) && (x>0) && (y>0))
            J(i,j)=I(x,y);
        else
            J(i,j)=0;
        end
    end
end
subplot(1,2,2);
imshow(J);
title('旋转后的图像');