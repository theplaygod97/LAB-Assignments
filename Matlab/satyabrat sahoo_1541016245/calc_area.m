clc;clear all;close all;
%script file:calc_area
%objective:To find area of circle
%Record of revision 
%  date               programmer           description of change
%  ====               ==========           =====================
% 12/08/15           satyabrat sahoo         original code
%
%Define variables
%r=radius of circle

%prompt the user for the input variables
 r = input('radius of circle = ');

%calculation
area=pi*r^2;
%write the result
disp('area = ');
disp(area)