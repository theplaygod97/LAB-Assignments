clc,clear all,close all
a=input('Enter the value of cos(x) = ');
y=sind(a)/cosd(a);
if (a>10^(-20))
    fprintf('The value of tan(x) = %f\n',y)
elseif (a<10^(-20))
    fprintf('Invalid input \n')
end