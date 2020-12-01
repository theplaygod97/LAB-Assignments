clc;
clear all;
close all;
for n=1:10
   if(n==1)
       x(n)=1;
   else
       x(n)=0;
   end;
   for i=1:n
   if(i<=2)
       h(i)=x(i);
   else
       h(i)=0.15*h(i-2)+x(n);
   end;
   end;
end;
disp(h)
subplot(211);
plot(h,'r');grid on;axis([1 10 -0.1 1])
subplot(212)
stem(h,'r');grid on;axis([1 10 -0.1 1])
gtext('1541016245-Satyabrat')