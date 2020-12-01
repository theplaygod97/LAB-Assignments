clc;
close all;
clear all;
t=-5:0.5:5;
for i=1:length(t)
    if t(i)>=0
        u(i)=1;
    else
        u(i)=0;
    end
end
for i=1:length(t)
    if t(i)>=1
        u1(i)=1;
    else
        u1(i)=0;
    end
end
y1=u.*cos(pi*t);
a=input('Enter the no')

y=a*u.*cos(pi*t);
if (a*y1==y)
    disp('Homogenity obeyed,Checking superposition');
    a1=input('Enter the a1')
    a2=input('Enter the a2')
    x1=u;
    x2=u1;
    y2=a1*u.*cos(pi*t);
    y3=a2*u1.*cos(pi*t);
    y4=y2+y3;
    y5=((a1*x1)+(a2*x2)).*cos(pi*t);
    if (y4==y5)
        disp('Superposition obeyed,System is linear');
    else
        disp('System is non linear');
    end
    else
    dsip('homogenity principle not obeyed\nHence system is non linear');
end