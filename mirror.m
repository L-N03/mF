function [J]=mirror(I,n)%镜像
%参数为1时实现垂直镜像
%参数为2时实现水平镜像
%参数为3时实现水平垂直镜像
[M,N]=size(I);
J=I;
if (n==1)
    for i=1:M
        for j=1:N
            J(i,j)=I(M-i+1,j);
        end
    end
elseif (n==2)
    for i=1:M
        for j=1:N
            J(i,j)=I(i,N-j+1);
        end
    end
elseif (n==3)
     for i=1:M
        for j=1:N
            J(i,j)=I(M-i+1,N-j+1);
        end
     end
end

