%script file:roots_of_quad_eqn
%objective:To find the roots of a quad eqn
%Record of revision 
%  date               programmer           description of change
%  ====               ==========           =====================
% 09/08/15           satyabrat sahoo         original code
%
%Define variables
%a=coefficient of x^2
%b=coefficient of x
%c=constant term
%D=discriminant
%A=FIRST ROOT
%B=SECOND ROOT
%prompt the user for the input variables
 a = input('coefficient of x^2=');
 b = input('coefficient of x=');
 c = input('constant term=');
%calculation
D = (b^2)-(4*a*c);
A = (-b+sqrt(D))/(2*a);
B = (-b-sqrt(D))/(2*a);
%write the result
disp(A);
disp(B);

 
 
 
