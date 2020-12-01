clc;clear all;close all
for n=2:15
    prob(n)=Birthday(n);
end
bar(prob)