clc;clear all;close all;
%prompt the user for user input
x=input('The value of x=');
if(x<5)
    y=2*x+1;    
else y=2*x;   
end
fprintf('The value of x is %d. \nHence the result is %d. \n',x,y)