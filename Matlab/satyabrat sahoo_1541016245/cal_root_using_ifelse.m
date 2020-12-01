clc;clear all;close all;
%prompt the user for the input variables
 a = input('coefficient of x^2=');
 b = input('coefficient of x=');
 c = input('constant term=');
 %calculation
D = (b^2)-(4*a*c);
A = (-b+sqrt(D))/(2*a);
B = (-b-sqrt(D))/(2*a);
 if (D)<0
    fprintf('The eqn has two complex roots %f and %f.\n',A,B)
 elseif (D)==0
     fprintf('The eqn has two Identical real roots %f and %f.\n',A,B)
 else
     fprintf('The eqn has two distinct real roots %f and %f.\n',A,B)
 end
     
     