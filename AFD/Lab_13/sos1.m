format short
clc;
clear all;
close all;
n=6
A=conv(conv([1 0 0.25],[1 0 2.25]),[0 1 0])
B=conv(conv([1 0.09 0.83],[1 0.2 1.01]),[1 0.1 1.18])
T=tf(A,B)
SOS=tf2sos(A,B)
if (SOS<=0.00001)
SOS=0
end
for i=1:(n/2)
    N=conv(1,SOS(i,1:(n/2)))
    tableA(i,:)=N
    D=conv(1,SOS(i,((n/2)+1):n))
    tableB(i,:)=D
    tableC(i)=tf(tableA(i,:),tableB(i,:))
    tableD(i)=sqrt(tableB(i,3))/tableB(i,2)
end
format short