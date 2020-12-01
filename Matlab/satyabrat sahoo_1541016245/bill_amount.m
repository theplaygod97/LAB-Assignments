clc;clear all;close all;
bill=input('Enter the bill amount in Rs.: ');
if (bill<100)  
  T=5;
elseif (bill>=100&&bill<=200)
    T=(bill*0.05);
elseif(bill>200)
    T=(bill*0.1);
else
end
TA=bill+T;
fprintf('Total bill amount is Rs.%6.2f \nTotal tip amount is Rs.%6.2f \nTotal amount to be deposited is Rs.%6.2f \n',bill,T,TA);