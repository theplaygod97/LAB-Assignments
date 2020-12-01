%script file: spring_const
%
%objective:To determine the compression of spring and the potential energy
%          stored in the spring
%
%Record of revisions
%  Date               programmer      description of change
%  ====               ==========      =====================
% 24/08/15          satyabrat sahoo     original code
%
%Define variables
%  input variables
%  F=array of force
%  k=array of spring costant
 
%  output variables
%  x=array of compression
%  E=energy stored
%  Emax=maximum energy
% 


%
%prompt the user for the input variables
  F=input('[force to compress a linear spring]');
  k=input('[spring constant]');

%calculation
 x=(F)./k;
 E=0.5*k.*(x.^2);
 
 
%write the result
disp(x);
disp(E);
disp(max(E));
stem(x,E);
ylabel('compression');
xlabel('energy');
title('E vs k')
  

