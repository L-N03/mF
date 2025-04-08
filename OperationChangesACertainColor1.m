I=imread('lingna.jpg');
figure(16);
A=rgb2gray(I);
s=size(I);
B=double(I);
C(:,:,1)=B(:,:,1)+B(:,:,2);
C(:,:,2)=B(:,:,2);
C(:,:,3)=B(:,:,3)-B(:,:,2);
for i=1:s(1)
    for j=1:s(2)
        for k=1:s(3)
            if C(i,j,k)<0
                C(i,j,k)=0;
            end
            if C(i,j,k)>255
                C(i,j,k)=255;
            end
        end
    end
end
C=uint8(C);
subplot(1,2,1),imshow(I);
subplot(1,2,2),imshow(C);
