%script file:free_fall
%objective:To find the position of ball
%Record of revision 
%  date               programmer           description of change
%  ====               ==========           =====================
% 09/08/15           satyabrat sahoo         original code
%
%Define variables
%x1=intial position
%v1=initial velocity
%t=time
%a=accelerarion
%x=distance travelled
%prompt the user for the input variables
  x1 = input('initial position=');
  v1 = input('initial velocity=');
  t = input('time=');
  a = input('accelerarion=');
 %calculation
  x=(x1)+(v1*t)+(1/2)*(a)*(t^2);
 %write the result
  disp(x);
  

