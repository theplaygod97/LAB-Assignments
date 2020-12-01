%script file: Distance_formula1
%
%objective:To determine the distance between two points in x-y-z plane
%
%Record of revisions
%  Date               programmer      description of change
%  ====               ==========      =====================
% 24/08/15          satyabrat sahoo     original code
%
%Define variables
%p1=coordinates of p1
%p2=coordinates of p2
%Distance=Distance between two points
%
%prompt the user for the input variables
p1=input('[coordinates of x axis for point p1 and p2]'); 
=input('[coordinates of y axis for point p1 and p2]');
=input('[coordinates of z axis for point p1 and p2]');
 
%calculation
  Distance = ((x2-x1).^2+(y2-y1).^2+(z2-z1).^2)^(0.5);
%write the result
  disp('Distance between two points');
  disp(Distance);

