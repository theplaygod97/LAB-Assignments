clc;
clear all;
close all;
P=tf([1 1],[1 2]);
H=tf(10,[1 0]);
series(P,H)