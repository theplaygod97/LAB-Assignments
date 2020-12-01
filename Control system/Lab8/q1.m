clc
close all
clear all
s=tf('s');
G=1/((s)*(s+2)*(s+1)*(s+4))
rlocus(G);