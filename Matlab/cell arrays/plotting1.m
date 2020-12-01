clc;clear all;close all;
n=input('Enter the graph no')
plotting(n).x_data =input('enter x-data');
plotting(n).y_data=input('enter y-data');
plotting(n).type = input('enter type of graph');
plotting(n).plot_title =input('enter plot title');
plotting(n).x_label =input('enter x-axis label');
plotting(n).y_label=input('enter y-axis label');
plot(plotting(n).x_data,plotting(n).y_data)