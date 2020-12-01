%script file: Distance_formula
%
%objective:To determine the distance between two points in x-y plane
%
%Record of revisions
%  Date               programmer      description of change
%  ====               ==========      =====================
% 07/08/15          satyabrat sahoo     original code
%
%Define variables
% x1 -- coordinates of point 1 in x axis
% y1 -- coordinates of point 1 in y axis
% x2 -- coordinates of point 2 in x axis
% y2 -- coordinates of point 2 in y axis
% Distance -- Distance between two points
%
%prompt the user for the input variables
 x1 = input('coordinates of point 1 in x axis');
 y1 = input('coordinates of point 1 in y axis');
 x2 = input('coordinates of point 2 in x axis');
 y2 = input('coordinates of point 2 in y axis');
%calculation
  Distance = ((x2-x1)^2+(y2-y1)^2)^(1/2);
%write the result
  disp('Distance between two points')
  disp(Distance);

