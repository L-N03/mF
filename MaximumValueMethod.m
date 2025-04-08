img=imread('lingna1.jpg');
p=imresize(img,[413,295]);
figure(1);
subplot(1,2,1);
imshow(p),title('original image');
red=p(:,:,1);%红色
green=p(:,:,2);%绿色
blue=p(:,:,3);%蓝色
i=1;
    j=1;
    [m,n]=size(red);
    max=zeros(m,n);
    max=uint8(max);
for i=1:1:m
    for j=1:1:n
        if red(i,j)<=green(i,j)
            max(i,j)=green(i,j);
        else max(i,j)=red(i,j);
        end
        if max(i,j)>=blue(i,j)
            max(i,j)=max(i,j);
        else max(i,j)=blue(i,j);
        end
    end
end
subplot(1,2,2);
imshow(max(i,j)),title('max');


