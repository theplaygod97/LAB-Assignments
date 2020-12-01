clc;close all;clear all;
%Given specifications:
%s=tf('s')
a_max=0.5;
a_min=18;
wp=1000;
ws=1400;
wns=ws/wp;
e=sqrt(power(10,(0.1*a_max))-1);
n=log(((10^(0.1*a_min)-1)/(10^(0.1*a_max-1)))^(0.5))/(log(wns+(wns^2-1)^(0.5)));
n = ceil(n)
a=(1/n)*asinh(1/e);
Den = 1;
for k=1:n
    sigma=-(sinh(a)*sin(((2*k-1)/(2*n))*pi))
    omega=cosh(a)*cos(((2*k-1)/(2*n))*pi)
    s1(k)=sigma + j*(omega)
    Den = conv(Den, [1, -s1(k)]);
end

Num = (Den(end))

T = tf(real(Num), real(Den))
pzmap(T)

figure
bode(T)
