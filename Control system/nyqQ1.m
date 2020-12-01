clc;
clear all;
close all;
s=tf('s');
G=2*(1-s)/((s+2)*(s+3));
bode(G)