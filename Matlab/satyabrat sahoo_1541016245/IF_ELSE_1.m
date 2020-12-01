clc;clear all;close all;
%prompt the user for user input
mark=input('The mark of student=');
if(mark>90)
   fprintf('congratulations,You have secured grade A and your marks is %d.\n',mark)
elseif(mark>80)
   fprintf('Nice try,you have secured a grade B and your mark is %d. \n',mark)
elseif(mark>70)
   fprintf('Nice try,you have secured a grade C and your mark is %d. \n',mark)
elseif(mark<70)
   fprintf('sOrRy,you have FAILED and your mark is %d. \n',mark)
   
end
    