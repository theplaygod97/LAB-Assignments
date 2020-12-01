clc;
clear all;
close all;
x=-10:0.05:10;
for i=1:length(x)
if x == 0 
        y = 1;
     else
         y = sin(pi*x(i))/(pi*x(i));
end
end
plot(x,y);grid on;
xlabel('x');
ylabel('y');
title('sinc');