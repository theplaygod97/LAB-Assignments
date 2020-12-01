clc;
clear;
close all;
s=tf('s')
ws=140000
wp=100000
a_min=18
a_max=0.25
wns=ws/wp
e=sqrt(power(10,(0.1*a_min))-1);
n=acosh(((10^(0.1*a_min)-1)/(10^(0.1*a_max-1)))^(0.5))/(acosh(abs(wns)));
n=ceil(n)
a=(1/n)*asinh(1/e)
Den = 1;
Num=1;
for k=1:n
    sigma(k)=-(sinh(a)*sin(((2*k-1)/(2*n))*pi))
    omega(k)=cosh(a)*cos(((2*k-1)/(2*n))*pi)
    wok(k)=sqrt(power(sigma(k),2)+power(omega(k),2))
    Qck(k)=wok(k)/(2*sigma(k))
    wiok(k)=1/wok(k)
    Qick(k)=Qck(k)
    alpha(k)=sigma(k)/(power(wok(k),2))
    beta(k)=(-omega(k))/(power(wok(k),2))
    pk(k)=alpha(k)+ j*(beta(k))
    zk(k)=sec((k*pi)/(2*n))
    Num = conv(Num, [1, -zk(k)]);
    Den = conv(Den, [1, -pk(k)]);
end
Num = conv((Den(end)),Num)
Den= conv(Den,[1 -(0.1417 - 0.8960i)])
T = tf(real(Num),real(Den))
figure
pzmap(T)
figure
bode(T)