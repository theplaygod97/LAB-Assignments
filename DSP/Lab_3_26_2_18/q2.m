clc;
clear all;
close all;
syms z
x=[2 3 4]
h=[3 4 5 6]
y=conv(x,h)
x1=length(x)
h1=length(h)
for i=1:x1
    xz(i)=[x(i)*z^-(i-1)];
end
XZ=sum(xz)
pretty(XZ)
for i=1:h1
    hz(i)=[h(i)*z^-(i-1)];
end
HZ=sum(hz)
pretty(HZ)
YZ=XZ*HZ
[a,b]=numden(YZ)
out=sym2poly(a)
YIZ=iztrans(YZ)
ezplot(YZ)