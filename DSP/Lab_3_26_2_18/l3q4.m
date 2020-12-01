clc;close all;clear all;
a=2;
b=[2 -3 1];
y=[4 10];
p=filtic(a,b,y)
n=0:20;
for i=1:length(n)
    if(n(i)>=0)
        x1(i)=1;
    else
        x1(i)=0;
    end
end
x=((1/4).^n).*x1;
d=filter(a,b,x,p)
stem(d)