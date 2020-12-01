%Satyabrat Sahoo
%1541016245
%Question 3 
clc;
clear;
close all;
amin=18;
amax=0.02;
wp=1000;
ws=1400;
wns=ws/wp
e=sqrt((power(10,0.1*amax))-1)
n=(acosh(sqrt(((power(10,0.1*amin))-1)/((power(10,0.1*amax))-1))))/(acosh(wns));
n=ceil(n)
a=(1/n)*asinh(1/e)
S=sinh(a)
C=cosh(a)
Den=1;
for k=1:n
    sigma(k)=-(sinh(a)*sin(((2*k-1)/n)*pi))
    omega(k)=(cosh(a)*cos(((2*k-1)/n)*pi))
    s(k)=sigma(k) + j*omega(k)
    Den=conv(Den,[1, -s(k)])
end
Num=Den(end)
T=tf(real(Num),real(Den))
figure(1)
bode(T)
figure(2)
pzmap(T)