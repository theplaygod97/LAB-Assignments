clc;
close all;
clear all;
n=-20:0.01:20;
for i=1:length(n)
    if(n(i)>=0)
        x1(i)=1;
    else
        x1(i)=0;
    end
end
for i=1:length(n)
    if(n(i)>=10)
        x2(i)=1;
    else
        x2(i)=0;
    end
end
X=x1-x2
figure(1)
plot(n,X);axis([-20 20 -1 2]);xlabel('Time');ylabel('Amplitude');title('x(n)=u(n)-u(n-10)')
syms z n
Xz=ztrans(X,n,z)
