clc;clear all;close all;
weight = input('Enter the weight of your package in pounds = ');
fprintf('weight = %f\n',weight)
if (weight<=2)
    cost=15;
    fprintf('Total cost is %d\n',cost)
elseif(weight>2 && weight <=70)
        cost=(ceil(weight-2)*5)+15;
        fprintf('Total cost is %d\n',cost)
elseif(weight>70 && weight <=100)
        cost=(ceil(weight-70)*15)+15;
        fprintf('Total cost is %d\n',cost)
else(weight>100)
    fprintf('Sorry!Your package cannot be accepted,its overweight.\n')
end    