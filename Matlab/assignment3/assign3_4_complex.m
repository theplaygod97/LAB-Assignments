clc;clear all;close all;
b=input('real part of complex no1 ');
a=input('imaginary part of complex no1 ');
d=input('real part of complex no2 ');
c=input('imaginary part of complex no2 ');
e=input('enter the operation you want to execute with these no i.e1-add,2-subs,3-multiply&4-divide');
f=b+a*1i;
t=d+c*1i;
switch(e)
case(1)
disp(f+t)        
case(2)
disp(f-t)   
case(3)
disp(f*t)   
case(4)
disp(f/t)   
end