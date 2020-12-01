clc;clear all;close all;
bill=input('Enter the bill amount: ');
if (bill<100)  
    fprintf('Tip is Rs.5');
  T=5
elseif (bill>=100&&bill<=199)
    T=(bill*0.05)
    fprintf('Tip is 5% 0f bill amount and ');
elseif(bill>200)
    T=(bill*0.1)
    fprintf('Tip is 10% of the bill amount');
else
    fprintf('total bill amount is %d/n total tip amount is %e bill\n',bill);
end