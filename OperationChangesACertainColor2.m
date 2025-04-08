I=imread('lingna.jpg');
A=rgb2gray(I);
s=size(I);
B=double(I);
Q1=zeros(s(1),s(2));
Q2=zeros(s(1),s(2));
for m=s(1):-1:1
    for n=s(2):-1:-1
        Q1(m,n)=m;
        Q2(m,n)=n;
    end
end
C(:,:,1)=B(:,:,1);
C(:,:,2)=B(:,:,2)-Q2;
C(:,:,3)=B(:,:,3)+Q1/3;
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




