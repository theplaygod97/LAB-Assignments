clc;
close all;
clear all;
fs=8000;
n=1:200;
m=input('Enter the value');
x1=sin(2*pi*(440/fs)*n);
N=length(x1);
xs=0.3*rand(1,N)+x1;
subplot(3,1,1)
plot(x1)
xlabel('frequency');
ylabel('amplitude');
title('signal');
N=length(x1);
xs=0.3*rand(1,N)+x1;
subplot(3,1,2)
plot(xs)
xlabel('frequency');
ylabel('amplitude');
title('noise added signal');
 for k=1:N
     if(k<=2)
         y(k)=xs(k);
     else
         y(k)=(1/m)*(xs(k)+xs(k-1)+xs(k-2));
     end
 end
subplot(3,1,3)
plot(y)