clc;
close all;
clear all;
t=0:10;
for i=1:length(t)
    if t(i)>=0
        u(i)=1;
    else
        u(i)=0;
    end
end
for i=1:length(t)
    if t(i)>=0
        r(i)=i;
    else
        r(i)=0;
    end
end
x=u.*cos(pi*t);
y=r.*cos(pi*t);
pzmap(t,y)