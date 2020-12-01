%script file: Distance_formula_3d
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
%dist=dist bw two points
%prompt the user for the input variables
p1=input('[coordinates of p1 ]'); 
p2=input('[coordinates of p2]');
 
%calculation
 Distance=((p2-p1).^2);
 Dist=sum(Distance);
 dist=sqrt(Dist);
%write the result
 Dist=sum(Distance);
 dist=sqrt(Dist);
 disp('Distance between two points');
 disp(dist);
  

