clc;clear all;close all;
%prompt the user for user input
mark=input('The mark of student=');
if(mark>70 && mark<80)
   fprintf('You have secured grade C.\n')
elseif(mark>80 && mark<90)
   fprintf('Nice try,you have secured a grade B.\n')
elseif(mark>90 && mark<=100)
   fprintf('congratulation,you have secured a grade A.\n')
else
  fprintf('SORRY,you have FAILED.\n')  
end