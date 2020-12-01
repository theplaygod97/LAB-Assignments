clc;
clear all;
close all;
for k=1:5
       u=[0,0,0,0,ones(1,10)]
    for n=1:k
       h(n)=(n*(n+1))/2
    end
end
h=[0,h];n=[0 1 2 3 4 5]
stem(n,h,'-mo','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63],'MarkerSize',10);axis([0 10 0 20])