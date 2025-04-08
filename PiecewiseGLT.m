I=imread("lingna1.jpg");
A=rgb2gray(I);
figure(8);
subplot(2,2,2);
imshow(A);
a0=0;b0=0;
a=40;c=10;
b=150;d=230;
f=255;g=255;
subplot(2,2,1);
plot([a0,a,b,f],[b0,c,d,g]);
r1=c/a;
b1=-r1*a;
r2=(d-c)/(b-a);
b2=-r2*a+c;
r3=(g-d)/(f-b);
b3=-r3*b+d;
axis([0,255,0,255]);
[m,n]=size(A);
h=double(A);
subplot(2,2,3);
imshow(mat2gray(h));
for i=1:m
    for j=1:n
        t=h(i,j);
        g(i,j)=0;
        if ((t>=a0)&&(t<=a))
            g(i,j)=0
        else
            if ((t>=a)&&(t<=b))
                g(i,j)=r2*t+b2;
            else
                if ((t>=b)&&(t<=f))
                    g(i,j)=r3*t+b3;
                end
            end
        end
    end
end







