clc;close all;clear all;
%Given specifications:
%s=tf('s')
a_max=0.05;
a_min=35;
wp=1000;
ws=2500;
wns=ws/wp;
e=1/sqrt(power(10,(0.1*a_min))-1);
n=acosh(((10^(0.1*a_min)-1)/(10^(0.1*a_max-1)))^(0.5))/(acosh(abs(wns)));
n = ceil(n)
a=(1/n)*asinh(1/e);
Den = 1;
Num = 1;
for k=1:n
    sigma=-(sinh(a)*sin(((2*k-1)/(2*n))*pi))
    omega=cosh(a)*cos(((2*k-1)/(2*n))*pi)
    s1(k)=sigma + j*(omega)
    si(k)=1/s1(k) 
    Den = conv(Den, [1, -si(k)]);
end
for k=1:2:n
     zik(k)=sec((k*pi)/(2*n))
      
end
for k=1:n
 if mod(k,2)==0
     zik(k)=-(zik(k-1))
       else
         zik(k)=zik(k)
 end
end
zk=j*zik
 for k=1:(n-1)
Num = conv(Num, [1 -zk(k)]);
end
K=Num(end)/Den(end)
T = tf(real(Num), real(Den));
T=k*T
figure
pzmap(T)

figure
bode(T)