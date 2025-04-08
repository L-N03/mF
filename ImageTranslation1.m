I=imread('lingna.jpg');
figure(19);
A=rgb2gray(I);
a=100;b=120;
[M,N]=size(A);
J=A;
for i=1:M
    for j=1:N
        if ((i-a>0)&&(i-a<M)&&(j-b>0)&&(j-b<N))
            J(i,j)=I(i-a,j-b);
        else
            J(i,j)=0;
        end
    end
end
subplot(2,1,2);
imshow(J);
subplot(2,1,1);
imshow(A);