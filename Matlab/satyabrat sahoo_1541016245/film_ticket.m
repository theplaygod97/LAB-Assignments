clc;clear all;close all
%prompt the user for user input
x=input('Amount you have = Rs.');
%saving
save=(x-100);
if(100<=x)&&(x<150)
    save=(x-100);
    fprintf('Go to Maharaja. %d \n',save)
elseif(150<=x)&&(x<350)
    save=(x-150);
    fprintf('Go to keshari  %d\n',save)
elseif(x>=350)
    save=(x-350);
    fprintf('You can go to INOX.%d \n',save)
elseif(x>=100000000)
    save=(x-100000000);
    fprintf('you can buy your own threater.%d\n',save)
else(x<100);
    fprintf('Rest and watch tv at home.%d \n',save)
end

            