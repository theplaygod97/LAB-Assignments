%script file:law_of_cosines
%
%objective:To find alpha,beta and gamma by law of cosines.
%
%Record of revisions
%  Date               programmer      description of change
%  ====               ==========      =====================
% 21/08/15          satyabrat sahoo     original code
%
%Define variables
%  input variables
%  a=length BC
%  b=lenght AC
%  c=lenngh BA
%output variables
%  alpha= angle BAC
%  beta= angle CBA
%  gamma= angle BCA
%  sum=alpha+beta+gamma
 
%
%prompt the user for the input variables
 a=input('length BC = ');
 b=input('length AC = ');
 c=input('length BA = ');
 
%calculation
  alpha=acosd(((b^2)+(c^2)-(a^2))/(2*b*c));
  beta=acosd(((a^2)+(c^2)-(b^2))/(2*a*c));
  gamma=acosd(((a^2)+(b^2)-(c^2))/(2*a*b));
  sum=((alpha)+(gamma)+(beta));
%write the result
  disp('alpha');
  disp(alpha);
  disp('beta');
  disp(beta);
  disp('gamma');
  disp(gamma);
  disp('sum');
  disp(sum);